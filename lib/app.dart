import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/core/core.dart';
import 'package:scatify/l10n/app_localizations.dart';
import 'package:scatify/res/strings.dart';
import 'package:scatify/shared/theme.dart';
import 'package:scatify/utils/theme_provider.dart';

///Root App Widget
class ScatifyApp extends StatelessWidget {
  /// ScatifyApp Constructor
  const ScatifyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final theme = ref.watch(themeProvider);
        return MaterialApp.router(
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          theme: theme.themeData,
          darkTheme:
              theme.isDarkMode ? theme.themeData : AppTheme().darkThemeData,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
          routeInformationProvider: router.routeInformationProvider,
        );
      },
    );
  }
}
