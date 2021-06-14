import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ThemeApp {
  static ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: AppTypography.fontFamilyName,
      primaryColor: AppColors.primaryColor,
      secondaryHeaderColor: AppColors.secondaryColor,
      textTheme: TextTheme(
        headline1: AppTypography.size45().copyWith(color: Colors.white),
        bodyText1: AppTypography.size16().copyWith(color: AppColors.textColor),
        bodyText2: AppTypography.size13().copyWith(color: AppColors.textColor),
        headline3: AppTypography.size20().copyWith(color: Colors.white),
        button: AppTypography.size20().copyWith(color: Colors.white),
      ),
    );
  }
}
