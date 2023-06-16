import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_text.dart';

class AppTheme {
  const AppTheme();

  ThemeData get themeData {
    return ThemeData(
      brightness: _brightness,
      extensions: <ThemeExtension<dynamic>>[
        _colors,
        _textTheme,
      ],
    );
  }

  Brightness get _brightness => Brightness.light;

  AppColorCustomTheme get _colors => AppColorCustomTheme.light;

  AppTextCustomTheme get _textTheme => AppTextCustomTheme.light;
}

class AppDarkTheme extends AppTheme {
  const AppDarkTheme();

  @override
  Brightness get _brightness => Brightness.dark;

  @override
  AppTextCustomTheme get _textTheme => AppTextCustomTheme.dark;

  @override
  AppColorCustomTheme get _colors => AppColorCustomTheme.dark;
}
