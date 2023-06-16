import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import 'const/colors.dart';

part 'app_color.tailor.dart';

@Tailor(themes: ['light', 'dark'], themeGetter: ThemeGetter.onThemeData)
class AppColor {
  static const List<Color> background = [
    Colours.white,
    Colours.black,
  ];

  static const List<Color> container = [
    Colours.grey,
    Colours.grey2,
  ];
}
