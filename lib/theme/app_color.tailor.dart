// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_color.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppColorCustomTheme extends ThemeExtension<AppColorCustomTheme> {
  const AppColorCustomTheme({
    required this.background,
    required this.container,
  });

  final Color background;
  final Color container;

  static const AppColorCustomTheme light = AppColorCustomTheme(
    background: Colours.white,
    container: Colours.grey,
  );

  static const AppColorCustomTheme dark = AppColorCustomTheme(
    background: Colours.black,
    container: Colours.grey2,
  );

  static const themes = [
    light,
    dark,
  ];

  @override
  AppColorCustomTheme copyWith({
    Color? background,
    Color? container,
  }) {
    return AppColorCustomTheme(
      background: background ?? this.background,
      container: container ?? this.container,
    );
  }

  @override
  AppColorCustomTheme lerp(
      covariant ThemeExtension<AppColorCustomTheme>? other, double t) {
    if (other is! AppColorCustomTheme) return this as AppColorCustomTheme;
    return AppColorCustomTheme(
      background: Color.lerp(background, other.background, t)!,
      container: Color.lerp(container, other.container, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColorCustomTheme &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality().equals(container, other.container));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(container),
    );
  }
}

extension AppColorCustomThemeThemeData on ThemeData {
  AppColorCustomTheme get appColorCustomTheme =>
      extension<AppColorCustomTheme>()!;
}
