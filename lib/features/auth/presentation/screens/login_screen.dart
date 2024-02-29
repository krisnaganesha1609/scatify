import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/features/auth/presentation/widgets/logo_widget.dart';
import 'package:scatify/features/auth/presentation/widgets/sign_in_with_spotify_button_widget.dart';
import 'package:scatify/shared/base.dart';

/// Login Screen
class LoginScreen extends ConsumerStatefulWidget {
  ///
  const LoginScreen({super.key});

  ///
  static const String route = 'login';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseApp.baseApp(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logoImage(),
            const SizedBox(
              height: 50,
            ),
            const SignInWithSpotifyButton(),
          ],
        ),
      ),
    );
  }
}
