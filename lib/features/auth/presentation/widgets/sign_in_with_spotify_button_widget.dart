import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/features/auth/application/auth_controller.dart';
import 'package:scatify/features/auth/application/sign_in_with_spotify_controller.dart';
import 'package:scatify/shared/const.dart';

/// Sign In With Spotify Button

class SignInWithSpotifyButton extends ConsumerStatefulWidget {
  ///
  const SignInWithSpotifyButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignInWithSpotifyButtonState();
}

class _SignInWithSpotifyButtonState
    extends ConsumerState<SignInWithSpotifyButton> {
  WebAuthenticationSession? session;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await ref
            .read(signInWithSpotifyControllerProvider.notifier)
            .signInWithSpotify();
        await ref.read(authControllerProvider.notifier).build();
      },
      child: Text(
        'Sign In With Spotify',
        style: TextStyles.primaryParagraph,
      ),
    );
  }
}
