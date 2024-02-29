import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/features/auth/auth_provider.dart';
import 'package:scatify/features/auth/domain/entities/access_token_entity.dart';

part 'auth_controller.g.dart';

/// Auth Controller
@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AccessTokenEntity?> build() async {
    final repository = ref.watch(authRepositoryProvider);
    final res = await repository.getToken();

    return res.fold(
      (l) {
        _updateAuthState(null);
        return null;
      },
      (r) {
        final token =
            AccessTokenEntity.fromJson(jsonDecode(r!) as Map<String, dynamic>);
        _updateAuthState(token);
        return token;
      },
    );
  }

  void _updateAuthState(AccessTokenEntity? token) {
    authStateNotifier.value = token != null;
  }

  ///
  FutureVoid signOut() async {
    await ref.read(authRepositoryProvider).signOut();
    _updateAuthState(null);
  }
}
