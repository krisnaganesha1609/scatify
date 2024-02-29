import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/features/auth/infrastructure/datasources/local/access_token.dart';
import 'package:scatify/features/auth/infrastructure/repositories/auth_repository.dart';

part 'auth_provider.g.dart';

///
///
///Infrastructure Dependencies
///
///

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) {
  final accessTokenLocalDataSource =
      AccessTokenLocalDataSource(const FlutterSecureStorage());

  final api =
      API(accessToken: ref.read(accessTokenProvider)?.accessToken ?? '');

  return AuthRepository(
    accessTokenLocalDataSource: accessTokenLocalDataSource,
    api: api,
  );
}

/// Provides a [ValueNotifier] to the app router to redirect on auth state change\
final authStateNotifier = ValueNotifier<bool>(false);
