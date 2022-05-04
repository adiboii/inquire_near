import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';

ThemeData AppThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Inter',
    textTheme: TextTheme(
        bodyText1: TextStyle(
          color: AppColor.textColor,
        ),
        headline1: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w800,
          color: AppColor.textColor,
        ),
        headline2: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w600,
          color: AppColor.textColor,
        ),
        headline3: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w600,
          color: AppColor.textColor,
        ),
        button: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.buttonText,
        )),
    colorScheme: ColorScheme.light());
