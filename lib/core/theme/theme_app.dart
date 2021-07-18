import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ThemeApp {
  static ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: AppTypography.fontFamilyName,
      primaryColor: AppColors.primaryColor,
      secondaryHeaderColor: AppColors.secondaryColor,
      textButtonTheme: buildTextButtonThemeData(),
      inputDecorationTheme: buildInputDecorationTheme(),
      textTheme: buildTextTheme(),
    );
  }

  static TextButtonThemeData buildTextButtonThemeData() {
    return TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          AppTypography.size20WithLight(),
        ),
        overlayColor:
            MaterialStateColor.resolveWith((states) => AppColors.primaryColor),
        foregroundColor: MaterialStateProperty.all(AppColors.textColor),
      ),
    );
  }

  static InputDecorationTheme buildInputDecorationTheme() {
    return InputDecorationTheme(
      hintStyle: AppTypography.size16().copyWith(color: AppColors.textColor),
      fillColor: AppColors.inputColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  static TextTheme buildTextTheme() {
    return TextTheme(
      headline1: AppTypography.size45().copyWith(color: Colors.white),
      bodyText1: AppTypography.size16().copyWith(color: AppColors.textColor),
      bodyText2: AppTypography.size13().copyWith(color: AppColors.textColor),
      headline3: AppTypography.size20().copyWith(color: Colors.white),
      headline4: AppTypography.size20WithLight(),
      button: AppTypography.size20().copyWith(color: Colors.white),
    );
  }
}
