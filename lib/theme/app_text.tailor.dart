// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_text.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTextCustomTheme extends ThemeExtension<AppTextCustomTheme> {
  const AppTextCustomTheme({
    required this.selected,
    required this.title,
    required this.unselected,
  });

  final TextStyle selected;
  final TextStyle title;
  final TextStyle unselected;

  static final AppTextCustomTheme light = AppTextCustomTheme(
    selected: AppText.selected[0],
    title: AppText.title[0],
    unselected: AppText.unselected[0],
  );

  static final AppTextCustomTheme dark = AppTextCustomTheme(
    selected: AppText.selected[1],
    title: AppText.title[1],
    unselected: AppText.unselected[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  AppTextCustomTheme copyWith({
    TextStyle? selected,
    TextStyle? title,
    TextStyle? unselected,
  }) {
    return AppTextCustomTheme(
      selected: selected ?? this.selected,
      title: title ?? this.title,
      unselected: unselected ?? this.unselected,
    );
  }

  @override
  AppTextCustomTheme lerp(
      covariant ThemeExtension<AppTextCustomTheme>? other, double t) {
    if (other is! AppTextCustomTheme) return this as AppTextCustomTheme;
    return AppTextCustomTheme(
      selected: TextStyle.lerp(selected, other.selected, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
      unselected: TextStyle.lerp(unselected, other.unselected, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextCustomTheme &&
            const DeepCollectionEquality().equals(selected, other.selected) &&
            const DeepCollectionEquality().equals(title, other.title) &&
            const DeepCollectionEquality()
                .equals(unselected, other.unselected));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(unselected),
    );
  }
}

extension AppTextCustomThemeThemeData on ThemeData {
  AppTextCustomTheme get appTextCustomTheme => extension<AppTextCustomTheme>()!;
}
