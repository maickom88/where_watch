import 'package:flutter/material.dart';

class AppTypography {
  static const String fontFamilyName = 'BW Seido';

  static TextStyle size65(BuildContext context) {
    return TextStyle(fontSize: 65);
  }

  static TextStyle size45(BuildContext context) {
    return TextStyle(fontSize: 45);
  }

  static TextStyle size45WithBold(BuildContext context) {
    return TextStyle(fontSize: 45, fontWeight: FontWeight.w800);
  }

  static TextStyle size30WithBold(BuildContext context) {
    return TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
  }

  static TextStyle size20WithBold(BuildContext context) {
    return TextStyle(fontSize: 30, fontWeight: FontWeight.w800);
  }

  static TextStyle size20(BuildContext context) {
    return TextStyle(fontSize: 20);
  }

  static TextStyle size16(BuildContext context) {
    return TextStyle(fontSize: 16);
  }

  static TextStyle size13(BuildContext context) {
    return TextStyle(fontSize: 13);
  }

  static TextStyle size13WithLight(BuildContext context) {
    return TextStyle(fontSize: 13, fontWeight: FontWeight.w300);
  }

  static TextStyle size20WithLight(BuildContext context) {
    return TextStyle(fontSize: 20, fontWeight: FontWeight.w300);
  }
}
