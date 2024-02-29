import 'dart:convert';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:fpdart/fpdart.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/environment/env.dart';
import 'package:scatify/features/auth/domain/abstracts/auth_interface.dart';
import 'package:scatify/features/auth/domain/entities/access_token_entity.dart';
import 'package:scatify/features/auth/domain/entities/user_entity.dart';
import 'package:scatify/features/auth/infrastructure/datasources/local/access_token.dart';
import 'package:scatify/res/endpoints.dart';
import 'package:scatify/res/paths.dart';
import 'package:scatify/utils/random_string.dart' as random;

/// Auth Repository
class AuthRepository implements AuthRepositoryInterface {
  ///
  AuthRepository({required this.accessTokenLocalDataSource, required this.api});

  /// Request Access Token
  final AccessTokenLocalDataSource accessTokenLocalDataSource;

  /// Request API
  final API api;

  @override
  FutureEither<String?> getToken() async {
    try {
      final result = await accessTokenLocalDataSource.get();
      return result.fold(left, right);
    } catch (e) {
      return left(
        Failure(message: e.toString(), stackTrace: StackTrace.current),
      );
    }
  }

  @override
  FutureEither<void> setToken(String token) async {
    try {
      await accessTokenLocalDataSource.store(token);
      return right(null);
    } catch (_) {
      return left(
        Failure(message: 'Unknown Error', stackTrace: StackTrace.current),
      );
    }
  }

  @override
  FutureEither<UserEntity> getUserProfile() async {
    final result = await api.getRequest(url: Endpoints.me, requireAuth: true);

    ///

    return result.fold(left, (r) {
      try {
        final data = jsonDecode(r.body);
        final user = UserEntity.fromJson(data as Map<String, dynamic>);
        return right(user);
      } catch (e) {
        return left(
          Failure(message: e.toString(), stackTrace: StackTrace.current),
        );
      }
    });
  }

  @override
  FutureEither<AccessTokenEntity> signInWithSpotify() async {
    const clientId = Env.spotifyClientID;
    const clientSecret = Env.spotifyClientSecret;
    const redirect = BasePaths.redirectUrl;
    const scope = 'user-read-private user-read-email';
    final state = random.getRandString(16);

    // ignore: inference_failure_on_uninitialized_variable, prefer_typing_uninitialized_variables
    var results;
    // ignore: inference_failure_on_uninitialized_variable, prefer_typing_uninitialized_variables
    var secondState;

    final firstRequest = await api.getRequest(
      url: Endpoints.authorize,
      requireAuth: false,
      queryParameters: {
        'response_type': 'code',
        'client_id': clientId,
        'scope': scope,
        'redirect_uri': redirect,
        'state': state,
      },
    );

    // if (await WebAuthenticationSession.isAvailable()) {
    //   await WebAuthenticationSession.create(
    //     url: WebUri(Endpoints.authorize),
    //     callbackURLScheme: redirect,
    //     onComplete: (url, error) async {
    //       if (url != null) {
    //         results = url.queryParameters.containsKey('code')
    //             ? url.queryParameters['code']
    //             : url.queryParameters['error'];
    //         secondState = url.queryParameters['state'];
    //       }
    //     },
    //   );
    // } else {
    //   return left(Failure(message: 'Cannot Create Web Auth Session'));
    // }

    //Using InAppWebView
    // RegExp code = RegExp("code=(.*)");
    // RegExp stateCode = RegExp("state=(*)");
    // results = code.firstMatch(url?.toString() ?? '')?.group(1);
    // secondState = stateCode.firstMatch(url?.toString() ?? '').group(1);

    firstRequest.fold((l) => l, (r) {
      try {
        final data = jsonDecode(r.body) as Map<String, dynamic>;
        results = data.containsKey('code') ? data['code'] : data['error'];
        secondState = data['state'];
        if (results == data['error']) {
          return Failure(message: data['error'].toString());
        }
      } catch (e) {
        return Failure(message: e.toString());
      }
    });

    if (secondState == null) {
      return left(Failure(message: 'Request Aborted due to Security Issue'));
    } else {
      final finalRequest = await api.getAccessTokenRequest(
        code: results.toString(),
        clientId: clientId,
        clientSecret: clientSecret,
      );

      return finalRequest.fold(left, (r) {
        try {
          final data = jsonDecode(r.body) as Map<String, dynamic>;
          final accessTokens = AccessTokenEntity.fromJson(data);
          setToken(accessTokens.toString());
          return right(accessTokens);
        } catch (e) {
          return left(
            Failure(message: e.toString(), stackTrace: StackTrace.current),
          );
        }
      });
    }
  }

  @override
  FutureEither<bool> signOut() async {
    throw UnimplementedError();
  }
}
