import 'package:scatify/core/core.dart';
import 'package:scatify/features/auth/domain/entities/access_token_entity.dart';
import 'package:scatify/features/auth/domain/entities/user_entity.dart';

/// AuthRepository Interface
abstract class AuthRepositoryInterface {
  /// Sign In With Spotify Interface
  FutureEither<AccessTokenEntity> signInWithSpotify();

  /// Get Access Token
  FutureEither<String?> getToken();

  /// Store Access Token
  FutureVoid setToken(String token);

  /// Get User Profile After Sign In
  FutureEither<UserEntity> getUserProfile();

  /// Sign Out
  FutureEither<bool> signOut();
}
