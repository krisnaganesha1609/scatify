import 'package:flutter/material.dart';

///
Color hexToColor(String hex) {
  assert(
    RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
    'Unknown Hex Color',
  );

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xFF000000 : 0x00000000),
  );
}

/// Application Colors
class AppColors {
  /// Green
  static const Color colorGreenLeaf = Color(0xFF15B24B);

  /// Yellow
  static const Color yellowColor = Color(0xFFFDD60B);

  /// Primary Background
  static const Color primaryBgColor = Color(0xB3FFFFFF);

  /// Dark Background
  static const Color darkBgColor = Color(0xFF000000);

  /// Primary Button
  static const Color primaryBtnColor = Color(0xFF43DAFB);

  /// Light Green Button
  static const Color lightGreenBtnColor = Color(0xFF3FF6BF);

  ///
  static Color starterWhite = hexToColor('#DADADA');

  ///
  static const Color darkText = Color(0xFFFFFFFF);

  ///
  static const Color primaryText = Color(0xFF000000);

  ///
  static const Color lightText = Color.fromARGB(115, 0, 0, 0);
}

///
class TextStyles {
  ///
  static TextStyle primaryHeading = const TextStyle(
    fontFamily: 'Lexend',
    fontSize: 30,
    fontWeight: FontWeight.w900,
    color: AppColors.primaryText,
  );

  ///
  static TextStyle primarySubheading = const TextStyle(
    fontFamily: 'Lexend',
    fontSize: 26,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
  );

  ///
  static TextStyle primaryParagraph = TextStyle(
    fontFamily: 'Lexend',
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryText,
    shadows: [
      Shadow(
        color: Colors.black.withOpacity(0.3),
        offset: const Offset(5, 5),
        blurRadius: 12,
      ),
    ],
  );

  ///
  static TextStyle primaryInlineText = const TextStyle(
    fontFamily: 'Lexend',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryText,
  );

  ///
  static TextStyle primaryTransparentText = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w200,
    color: AppColors.lightText,
  );
}
