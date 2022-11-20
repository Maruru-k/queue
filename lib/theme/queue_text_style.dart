// Flutter imports:
import 'package:flutter/material.dart';
import 'package:queue/canstants.dart';

class QueueTextStyle {
  static TextStyle tiny(Color color) {
    return TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w300,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle standard(Color color) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle medium(Color color) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle mediumBold(Color color) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle title(Color color) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle title2(Color color) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle title3(Color color) {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      fontFamily: queueFontFamily,
      color: color,
    );
  }

  static TextStyle title4(Color color, {double letterSpacing = 1}) {
    return TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      fontFamily: queueFontFamily,
      color: color,
      letterSpacing: letterSpacing,
    );
  }
}
