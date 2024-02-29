import 'package:flutter/material.dart';

/// Default [ThemeData] for Example
class AppTheme {
  /// Default constructor for Example [ThemeData]
  AppTheme();

  /// Exposes theme data to MaterialApp
  ThemeData get lightThemeData {
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: _lightMode,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        bodyMedium: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        bodySmall: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        displayLarge: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        displayMedium: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        displaySmall: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        headlineLarge: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        headlineMedium: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        headlineSmall: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        labelLarge: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        labelMedium: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        labelSmall: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        titleLarge: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        titleMedium: TextStyle(fontFamily: 'Lexend', color: Colors.black),
        titleSmall: TextStyle(fontFamily: 'Lexend', color: Colors.black),
      ),
    );
  }

  /// Exposes dark theme data to MaterialApp
  ThemeData get darkThemeData {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: _darkMode,
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        bodyMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        bodySmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        displayLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        displayMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        displaySmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        headlineLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        headlineMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        headlineSmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        labelLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        labelMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        labelSmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        titleLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        titleMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
        titleSmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      ),
    );
  }

  ColorScheme get _lightMode => ColorScheme.light(
        background: Colors.grey.shade300,
        primary: Colors.grey.shade500,
        secondary: Colors.grey.shade200,
        inversePrimary: Colors.grey.shade900,
      );

  ColorScheme get _darkMode => ColorScheme.dark(
        background: Colors.grey.shade900,
        primary: Colors.grey.shade600,
        secondary: Colors.grey.shade800,
        inversePrimary: Colors.grey.shade300,
      );
}
