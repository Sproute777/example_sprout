import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text.tailor.dart';

@Tailor(themes: ['light', 'dark'], themeGetter: ThemeGetter.onThemeData)
class AppText {
  static List<TextStyle> title = [
    const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
  ];
  static List<TextStyle> selected = [
    const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
  ];
  static List<TextStyle> unselected = [
    const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    const TextStyle(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
  ];
}
