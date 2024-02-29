import 'dart:convert';
import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/res/endpoints.dart';
import 'package:scatify/res/paths.dart';
import 'package:scatify/res/strings.dart';
import 'package:scatify/utils/config.dart';

/// Fetch Api Auth Session
// final apiProvider = StateProvider<API>((ref) {
//   final authSession = ref.watch(authSessionProvider);
//   return API(authSession: authSession);
// });

/// API Class
class API {
  /// API Const
  API({required String? accessToken}) : _accessToken = accessToken;
  final String? _accessToken;

  /// Get Access Token Request
  FutureEither<Response> getAccessTokenRequest({
    required String code,
    required String clientId,
    required String clientSecret,
  }) async {
    const url = Endpoints.getToken;
    final requestHeader = <String, String>{
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization':
          'Basic ${utf8.fuse(base64).encode('$clientId:$clientSecret')}',
    };
    final credentials = {
      'grant_type': 'authorization_code',
      'code': code,
      'redirect_uri': BasePaths.redirectUrl,
    };
    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpGet);
    }
    try {
      final response = await post(
        Uri.parse(url).replace(queryParameters: credentials),
        headers: requestHeader,
      );
      log('RESPONSE : ${response.body}', name: LogLabel.httpGet);
      return Right(response);
    } catch (e, stktrc) {
      return Left(
        Failure(
          message: FailureMessage.postRequestMessage,
          stackTrace: stktrc,
        ),
      );
    }
  }

  /// Get Request
  FutureEither<Response> getRequest({
    required String url,
    required bool requireAuth,
    Map<String, dynamic>? queryParameters,
  }) async {
    final requestHeader = <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_accessToken',
    };

    if (requireAuth) {
      if ((_accessToken ?? '').isEmpty) {
        return Left(Failure(message: FailureMessage.authTokenEmpty));
      }
    }
    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpGet);
      log('requireAuth : $requireAuth', name: LogLabel.httpGet);
    }

    try {
      final response = await get(
        Uri.parse(url).replace(queryParameters: queryParameters),
        headers: requestHeader,
      );
      log('RESPONSE : ${response.body}', name: LogLabel.httpGet);
      return Right(response);
    } catch (e, stktrc) {
      return Left(
        Failure(
          message: FailureMessage.getRequestMessage,
          stackTrace: stktrc,
        ),
      );
    }
  }

  /// Post Request
  FutureEither<Response> postRequest({
    required String url,
    required bool requireAuth,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final requestHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_accessToken',
    };
    if (requireAuth) {
      if ((_accessToken ?? '').isEmpty) {
        return Left(Failure(message: FailureMessage.authTokenEmpty));
      }
    }
    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpPost);
      log('requireAuth : $requireAuth', name: LogLabel.httpPost);
      log('BODY : $body', name: LogLabel.httpPost);
    }
    try {
      final response = await post(
        Uri.parse(url).replace(queryParameters: queryParameters),
        body: jsonEncode(body),
        headers: requestHeaders,
      );
      log('RESPONSE : ${response.body}', name: LogLabel.httpPost);
      return Right(response);
    } catch (e, stktrc) {
      return Left(
        Failure(
          message: FailureMessage.postRequestMessage,
          stackTrace: stktrc,
        ),
      );
    }
  }

  /// Put Request
  FutureEither<Response> putRequest({
    required String url,
    required bool requireAuth,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final requestHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_accessToken',
    };
    if (requireAuth) {
      if ((_accessToken ?? '').isEmpty) {
        return Left(Failure(message: FailureMessage.authTokenEmpty));
      }
    }
    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpPut);
      log(
        'requireAuth : $requireAuth',
        name: LogLabel.httpPut,
      );
      log('BODY : $body', name: LogLabel.httpPut);
    }
    try {
      final response = await put(
        Uri.parse(url).replace(queryParameters: queryParameters),
        body: jsonEncode(body),
        headers: requestHeaders,
      );
      log('RESPONSE : ${response.body}', name: LogLabel.httpPut);
      return Right(response);
    } catch (e, stktrc) {
      return Left(
        Failure(
          message: FailureMessage.putRequestMessage,
          stackTrace: stktrc,
        ),
      );
    }
  }

  /// Delete Request
  FutureEither<Response> deleteRequest({
    required String url,
    required bool requireAuth,
    dynamic body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final requestHeaders = <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_accessToken',
    };
    if (requireAuth) {
      if ((_accessToken ?? '').isEmpty) {
        return Left(Failure(message: FailureMessage.authTokenEmpty));
      }
    }
    if (AppConfig.logHttp) {
      log('REQUEST TO : $url', name: LogLabel.httpDelete);
      log('requireAuth : $requireAuth', name: LogLabel.httpDelete);
      log('BODY : $body', name: LogLabel.httpDelete);
    }
    try {
      final response = await put(
        Uri.parse(url).replace(queryParameters: queryParameters),
        body: jsonEncode(body),
        headers: requestHeaders,
      );
      log('RESPONSE : ${response.body}', name: LogLabel.httpDelete);
      return Right(response);
    } catch (e, stktrc) {
      return Left(
        Failure(
          message: FailureMessage.deleteRequestMessage,
          stackTrace: stktrc,
        ),
      );
    }
  }
}
