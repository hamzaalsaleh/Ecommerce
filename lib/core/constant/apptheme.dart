import 'package:ecommerce/core/constant/appcolor.dart';
import 'package:flutter/material.dart';

ThemeData arabictheme = ThemeData(
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: AppColor.hPrimaryColor),
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      bodyLarge: TextStyle(
          height: 2,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 15)),
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
ThemeData englishtheme = ThemeData(
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: AppColor.hPrimaryColor),
  fontFamily: "englishfont",
  textTheme: const TextTheme(
      displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      bodyLarge: TextStyle(
          height: 2,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          fontSize: 15)),
  // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
);
