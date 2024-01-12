import 'package:flutter/material.dart';

class TitleTextStyle {
  static const double fontSize = 28.0;
  static const FontWeight fontWeight = FontWeight.bold;
  static const Color textColor = Colors.white;

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: textColor,
    );
  }
}
