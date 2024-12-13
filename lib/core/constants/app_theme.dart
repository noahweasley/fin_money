import 'package:fin_money/core/constants/app_font.dart';
import 'package:flutter/material.dart';

class Themes {
  static const darkThemeCode = 0;
  static const lightThemeCode = 1;
  static final _dark = _baseTheme;
  static final _light = _baseTheme;
  static final _baseTheme = ThemeData(fontFamily: AppFonts.lato);

  static ThemeData getTheme(int? code) {
    return code == lightThemeCode ? _light : _dark;
  }
}
