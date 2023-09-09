import 'dart:ui';
import 'package:flutter/material.dart';

 class Crimson {
  static const Color primaryColor = Color(0xFFBF3A4A);
  static const Color backgroundColor = Color(0xFFF8E7ED);
// const Color secondaryColor;
}

class Teal {
  static const Color primaryColor = Color(0xFF00A99D);
  static const Color backgroundColor = Color(0xFFC8ECE8);
// const Color secondaryColor;
}

class ThemeClass {
  Color lightPrimaryColor = Color(0xFFBF3A4A);
  Color darkPrimaryColor = Color(0xFF00A99D);

  static ThemeData crimsonTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.lightPrimaryColor),
   
  );

  static ThemeData tealTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.darkPrimaryColor),

    
  );
}

ThemeClass _themeClass = ThemeClass();

