// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyAppColors {
  static final darkBlue = Color(0xFF050b2b);
  static final lightBlue = Color(0xFF7e91f7);
}

class MyAppThemes {
  static final lighTheme = ThemeData(
    primaryColor: MyAppColors.lightBlue,
    brightness: Brightness.light
  );

  static final darkTheme = ThemeData(
    primaryColor: MyAppColors.darkBlue,
    brightness: Brightness.dark
  );
}