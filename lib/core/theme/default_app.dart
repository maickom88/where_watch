import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:where_watch_app/core/constants/constants.dart';

class DefaultApp {
  static const double padding = 15;
  static const double hPadding = 15;
  static const double vPadding = 30;
  static const double wSpacer = 10;
  static const double hSpacer = 15;
  static const zero = null;

  static BoxShadow defaultBoxShadow({double blur = 6}) {
    return BoxShadow(
      blurRadius: blur,
      offset: Offset(0, 3),
      color: Color(0x8E000000),
    );
  }

  static SizedBox defaultSpaceHeight({double height = 20}) {
    return SizedBox(
      height: height,
    );
  }

  static BorderRadius defaultBorderRadius({double border = 10}) {
    return BorderRadius.circular(border);
  }

  static LinearGradient defaultLinearGradient({
    color = AppColors.primaryColor,
    color2 = AppColors.secondaryColor,
  }) {
    return LinearGradient(
      colors: [
        AppColors.primaryColor,
        AppColors.secondaryColor,
      ],
      begin: Alignment.topLeft,
      end: Alignment.topRight,
    );
  }
}
