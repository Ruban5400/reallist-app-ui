import 'package:flutter/material.dart';
import 'package:reallist/App%20Theme/theme_preference.dart';

class ThemeClass {
  Color lightPrimaryColor = Color(0xFFBF3A4A);
  
  Color darkPrimaryColor = Color(0xFF00A99D);

  static ThemeData crimsonTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.lightPrimaryColor),
  );

  static ThemeData tealTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Montserrat',
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.darkPrimaryColor),
  );
}

ThemeClass _themeClass = ThemeClass();

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreferences _preferences = ThemePreferences();
  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _preferences = ThemePreferences();
    getPreferences();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }
}
