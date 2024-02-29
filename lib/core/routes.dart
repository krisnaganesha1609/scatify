import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scatify/features/auth/auth_provider.dart';
import 'package:scatify/features/auth/presentation/screens/login_screen.dart';
import 'package:scatify/features/common/presentation/screens/error_screen.dart';
import 'package:scatify/features/common/presentation/screens/home/home_screen.dart';
import 'package:scatify/features/common/presentation/screens/search/search_screen.dart';
import 'package:scatify/features/common/presentation/screens/settings/settings_screen.dart';
import 'package:scatify/shared/extension/ui_extension.dart';

/// App Routers
final router = GoRouter(
  routes: [
    GoRoute(path: '/${LoginScreen.route}', name: LoginScreen.route),
    GoRoute(path: '/${HomeScreen.route}', name: HomeScreen.route),
    GoRoute(path: '/${SearchScreen.route}', name: SearchScreen.route),
    GoRoute(path: '/${SettingsScreen.route}', name: SettingsScreen.route)
  ],
  observers: [
    routeObserver,
  ],
  redirect: (context, state) {
    final isAuthenticated = authStateNotifier.value;
    if (isAuthenticated) {
      return HomeScreen.route;
    }
    return LoginScreen.route;
  },
  debugLogDiagnostics: true,
  errorBuilder: (context, state) =>
      ErrorScreen(message: context.tr.somethingWentWrong),
);

/// Route observer to use with RouteAware
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
