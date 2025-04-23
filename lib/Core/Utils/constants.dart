import 'package:flutter/material.dart';

ThemeData kLightTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(fontWeight: FontWeight.bold),
    // bodyMedium: TextStyle(fontWeight: FontWeight.bold),
  ),
);

ThemeData kDarkTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.teal,
    foregroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(fontWeight: FontWeight.bold),
    // bodyMedium: TextStyle(fontWeight: FontWeight.bold),
  ),
);
