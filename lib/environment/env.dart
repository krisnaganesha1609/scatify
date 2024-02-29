import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')

/// Environment Variables
final class Env {
  @EnviedField(varName: 'SPOTIFY_CLIENT_ID')

  /// Spotify Client ID
  static const String spotifyClientID = _Env.spotifyClientID;
  @EnviedField(varName: 'SPOTIFY_CLIENT_SECRET')

  /// Spotify Client Secret
  static const String spotifyClientSecret = _Env.spotifyClientSecret;
}
