import 'package:flutter/material.dart';
import 'package:inquire_near/themes/app_color.dart';

ThemeData AppThemeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    fontFamily: 'Inter',
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: AppColor.textColor,
      ),
      headline1: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w800,
        color: AppColor.textColor,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColor.textColor,
      ),
      headline3: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColor.textColor,
      ),
      headline4: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: AppColor.textColor,
      ),
      // bodyLarge: TextStyle(
      //   fontSize: 16,
      //   fontWeight: FontWeight.w600,
      //   color: AppColor.textColor,
      // ),
      // bodyMedium: TextStyle(
      //   fontSize: 14,
      //   fontWeight: FontWeight.w400,
      //   color: AppColor.textColor,
      // ),
      // bodySmall: TextStyle(
      //   fontSize: 12,
      //   fontWeight: FontWeight.w200,
      //   color: AppColor.textColor,
      // ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(AppColor.primary),
      ),
    ),
    colorScheme: ColorScheme.light());
