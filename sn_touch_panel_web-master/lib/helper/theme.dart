import 'package:flutter/material.dart';

import 'constants_colors.dart';

ThemeData lightThemeData() {
  return ThemeData(
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: lightBackgroundColor,
    backgroundColor: lightShadowColor,
    shadowColor: lightShadowColor1,
    colorScheme: ColorScheme.light(
      secondary: lightBackgroundColor,
      surface: lightThemeTextColor,
      primary: innerShadowTopDark,
      onPrimary: Colors.black54,
    ),
    fontFamily: 'Poppins',
    textTheme: TextTheme(
      bodyText1: TextStyle(color: lightThemeTextColor),
      bodyText2: TextStyle(color: lightThemeTextColor),
      headline4: TextStyle(color: lightThemeTextColor, fontSize: 30),
      headline1: TextStyle(color: lightThemeTextColor, fontSize: 60),
    ),
  );
}

ThemeData darkThemeData() {
  return ThemeData(
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: darkBackgroundColor,
    backgroundColor: darkShadowColor,
    shadowColor: darkShadowColor1,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.dark(
      secondary: darkBackgroundColor,
      surface: Colors.white,
      primary: innerShadowTopLight,
      onPrimary: Colors.white,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(color: darkThemeTextColor),
      bodyText2: TextStyle(color: darkThemeTextColor),
      headline4: TextStyle(color: darkThemeTextColor, fontSize: 30),
      headline1: TextStyle(color: darkThemeTextColor, fontSize: 60),
    ),
  );
}

// 12, 14, 16 ,18
AppBarTheme appBarTheme =
    const AppBarTheme(color: Colors.transparent, elevation: 0);
