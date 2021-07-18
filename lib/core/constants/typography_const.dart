import 'package:flutter/material.dart';

class AppTypography {
  static const String fontFamilyName = 'BWSeido';

  static TextStyle size65() {
    return TextStyle(fontSize: 65);
  }

  static TextStyle size45() {
    return TextStyle(fontSize: 45);
  }

  static TextStyle size45WithBold() {
    return TextStyle(fontSize: 45, fontWeight: FontWeight.w800);
  }

  static TextStyle size30WithBold() {
    return TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
  }

  static TextStyle size20WithBold() {
    return TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
  }

  static TextStyle size20WithLight() {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
  }

  static TextStyle size20() {
    return TextStyle(fontSize: 20);
  }

  static TextStyle size16() {
    return TextStyle(fontSize: 16);
  }

  static TextStyle size13() {
    return TextStyle(fontSize: 13);
  }

  static TextStyle size13WithLight(BuildContext context) {
    return TextStyle(fontSize: 13, fontWeight: FontWeight.w300);
  }
}
