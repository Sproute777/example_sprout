import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_text.dart';
import 'const/colors.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      brightness: _brightness,
      appBarTheme: _appBarTheme,
      extensions: <ThemeExtension<dynamic>>[
        _colors,
        _textTheme,
      ],
    );
  }

  AppBarTheme get _appBarTheme => const AppBarTheme(
      backgroundColor: Colors.blue, foregroundColor: Colors.red, elevation: 2);

  Brightness get _brightness => Brightness.light;

  AppColorCustomTheme get _colors => AppColorCustomTheme.light;

  AppTextCustomTheme get _textTheme => AppTextCustomTheme.light;
}

class AppDarkTheme extends AppTheme {
  const AppDarkTheme();

  @override
  AppBarTheme get _appBarTheme => const AppBarTheme(
      backgroundColor: Colours.black,
      foregroundColor: Colours.white,
      elevation: 2);

  @override
  Brightness get _brightness => Brightness.dark;

  @override
  AppTextCustomTheme get _textTheme => AppTextCustomTheme.dark;

  @override
  AppColorCustomTheme get _colors => AppColorCustomTheme.dark;
}
