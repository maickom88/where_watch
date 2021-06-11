import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultApp {
  static const double padding = 15;
  static const double hPadding = 15;
  static const double vPadding = 30;
  static const double wSpacer = 10;
  static const double hSpacer = 15;

  static BoxShadow defaultBoxShadow() {
    return BoxShadow(
      blurRadius: 6,
      offset: Offset(0, 3),
      color: Color(0x8E000000),
    );
  }
}
