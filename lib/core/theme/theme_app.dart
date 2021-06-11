import 'package:flutter/material.dart';
import 'package:where_watch_app/core/constants/colors_constants.dart';
import 'package:where_watch_app/core/constants/constants.dart';

class ThemeApp {
  static ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: AppTypography.fontFamilyName,
      textTheme: TextTheme(
        headline1: AppTypography.size45().copyWith(color: Colors.white),
        bodyText1: AppTypography.size16().copyWith(color: AppColors.textColor),
      ),
    );
  }
}
