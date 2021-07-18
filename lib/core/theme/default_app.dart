import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/constants.dart';
import '../../presentation/components/components.dart';

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

  static Future<T?> showLoad<T>() => Get.dialog(
        WWDialogLoading(),
        barrierColor: Colors.black38,
      );

  static void close<T>() => Get.back();

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
