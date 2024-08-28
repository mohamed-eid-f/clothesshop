import "package:flutter/material.dart";

const _primaryColor = Color(0xFF4c53a5);

var appThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    centerTitle: true,
  ),
  iconTheme: const IconThemeData(
    color: _primaryColor,
    size: 70,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: _primaryColor,
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.circular(0),
        side: BorderSide(color: _primaryColor, width: 2),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        // borderRadius: BorderRadius.all(Radius.circular(16)),
        side: BorderSide(color: _primaryColor, width: 2),
      ),
    ),
  ),
  brightness: Brightness.light,
  cardColor: const Color(0xFFedecf2),
  primaryColor: _primaryColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: _primaryColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: _primaryColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: _primaryColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      color: _primaryColor,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: _primaryColor,
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
);
