import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scatify/shared/theme.dart';

/// Theme Provider
final themeProvider = ChangeNotifierProvider((ref) => ThemeNotifier());

/// Theme Notifier Class
class ThemeNotifier extends ChangeNotifier {
  ThemeData _themeData = AppTheme().lightThemeData;

  ///
  ThemeData get themeData => _themeData;

  ///
  bool get isDarkMode => _themeData == AppTheme().darkThemeData;

  /// Toggle Dark Mode
  void toggleDark() {
    _themeData = AppTheme().darkThemeData;
    notifyListeners();
  }

  /// Toggle Light Mode
  void toggleLight() {
    _themeData = AppTheme().lightThemeData;
    notifyListeners();
  }
}
