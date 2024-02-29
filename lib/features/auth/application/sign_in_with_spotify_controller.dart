import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/features/auth/auth_provider.dart';
import 'package:scatify/features/auth/domain/entities/access_token_entity.dart';

part 'sign_in_with_spotify_controller.g.dart';

///

@riverpod
class SignInWithSpotifyController extends _$SignInWithSpotifyController {
  ///
  @override
  FutureOr<AccessTokenEntity?> build() {
    return ref.read(accessTokenProvider);
  }

  /// Sign In With Spotify
  FutureVoid signInWithSpotify() async {
    final res = await ref.read(authRepositoryProvider).signInWithSpotify();
    res.fold(
      (l) => state = AsyncError(l, StackTrace.current),
      (r) => state = AsyncData(r),
    );
  }
}
