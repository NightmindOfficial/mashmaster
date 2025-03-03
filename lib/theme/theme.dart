import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff316668),
      surfaceTint: Color(0xff316668),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff86bbbd),
      onPrimaryContainer: Color(0xff114c4e),
      secondary: Color(0xff00696d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff55c3c8),
      onSecondaryContainer: Color(0xff004e50),
      tertiary: Color(0xff414d57),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff59656f),
      onTertiaryContainer: Color(0xffd6e2ee),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff8f9f9),
      onSurface: Color(0xff191c1c),
      onSurfaceVariant: Color(0xff404849),
      outline: Color(0xff707979),
      outlineVariant: Color(0xffbfc8c8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3131),
      inversePrimary: Color(0xff9ad0d2),
      primaryFixed: Color(0xffb6ecee),
      onPrimaryFixed: Color(0xff002021),
      primaryFixedDim: Color(0xff9ad0d2),
      onPrimaryFixedVariant: Color(0xff154e50),
      secondaryFixed: Color(0xff88f3f8),
      onSecondaryFixed: Color(0xff002021),
      secondaryFixedDim: Color(0xff6bd7dc),
      onSecondaryFixedVariant: Color(0xff004f52),
      tertiaryFixed: Color(0xffd8e4f0),
      onTertiaryFixed: Color(0xff111d25),
      tertiaryFixedDim: Color(0xffbcc8d3),
      onTertiaryFixedVariant: Color(0xff3c4852),
      surfaceDim: Color(0xffd9dada),
      surfaceBright: Color(0xfff8f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4f3),
      surfaceContainer: Color(0xffedeeed),
      surfaceContainerHigh: Color(0xffe7e8e8),
      surfaceContainerHighest: Color(0xffe1e3e2),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003d3f),
      surfaceTint: Color(0xff316668),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff417577),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003d3f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff00797e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff2c3841),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff59656f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9f9),
      onSurface: Color(0xff0f1212),
      onSurfaceVariant: Color(0xff2f3838),
      outline: Color(0xff4b5454),
      outlineVariant: Color(0xff666f6f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3131),
      inversePrimary: Color(0xff9ad0d2),
      primaryFixed: Color(0xff417577),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff265d5f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff00797e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff005f62),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff626f79),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff4a5660),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c7c6),
      surfaceBright: Color(0xfff8f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f4f3),
      surfaceContainer: Color(0xffe7e8e8),
      surfaceContainerHigh: Color(0xffdcdddc),
      surfaceContainerHighest: Color(0xffd0d2d1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003234),
      surfaceTint: Color(0xff316668),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff185153),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff003234),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff005255),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff222d36),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff3f4b54),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8f9f9),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff252e2e),
      outlineVariant: Color(0xff424b4b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3131),
      inversePrimary: Color(0xff9ad0d2),
      primaryFixed: Color(0xff185153),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00393b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff005255),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff00393b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff3f4b54),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff28343d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb7b9b9),
      surfaceBright: Color(0xfff8f9f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f1f0),
      surfaceContainer: Color(0xffe1e3e2),
      surfaceContainerHigh: Color(0xffd3d5d4),
      surfaceContainerHighest: Color(0xffc5c7c6),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa1d7d9),
      surfaceTint: Color(0xff9ad0d2),
      onPrimary: Color(0xff003738),
      primaryContainer: Color(0xff86bbbd),
      onPrimaryContainer: Color(0xff114c4e),
      secondary: Color(0xff74dfe4),
      onSecondary: Color(0xff003739),
      secondaryContainer: Color(0xff55c3c8),
      onSecondaryContainer: Color(0xff004e50),
      tertiary: Color(0xffbcc8d3),
      onTertiary: Color(0xff26323b),
      tertiaryContainer: Color(0xff59656f),
      onTertiaryContainer: Color(0xffd6e2ee),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff111414),
      onSurface: Color(0xffe1e3e2),
      onSurfaceVariant: Color(0xffbfc8c8),
      outline: Color(0xff8a9292),
      outlineVariant: Color(0xff404849),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e3e2),
      inversePrimary: Color(0xff316668),
      primaryFixed: Color(0xffb6ecee),
      onPrimaryFixed: Color(0xff002021),
      primaryFixedDim: Color(0xff9ad0d2),
      onPrimaryFixedVariant: Color(0xff154e50),
      secondaryFixed: Color(0xff88f3f8),
      onSecondaryFixed: Color(0xff002021),
      secondaryFixedDim: Color(0xff6bd7dc),
      onSecondaryFixedVariant: Color(0xff004f52),
      tertiaryFixed: Color(0xffd8e4f0),
      onTertiaryFixed: Color(0xff111d25),
      tertiaryFixedDim: Color(0xffbcc8d3),
      onTertiaryFixedVariant: Color(0xff3c4852),
      surfaceDim: Color(0xff111414),
      surfaceBright: Color(0xff373a3a),
      surfaceContainerLowest: Color(0xff0c0f0f),
      surfaceContainerLow: Color(0xff191c1c),
      surfaceContainer: Color(0xff1d2020),
      surfaceContainerHigh: Color(0xff282a2a),
      surfaceContainerHighest: Color(0xff333535),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb0e6e8),
      surfaceTint: Color(0xff9ad0d2),
      onPrimary: Color(0xff002b2c),
      primaryContainer: Color(0xff86bbbd),
      onPrimaryContainer: Color(0xff002c2d),
      secondary: Color(0xff82edf2),
      onSecondary: Color(0xff002b2d),
      secondaryContainer: Color(0xff55c3c8),
      onSecondaryContainer: Color(0xff002d2f),
      tertiary: Color(0xffd1deea),
      onTertiary: Color(0xff1b2730),
      tertiaryContainer: Color(0xff86929d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff111414),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd5dede),
      outline: Color(0xffabb4b4),
      outlineVariant: Color(0xff899292),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e3e2),
      inversePrimary: Color(0xff165052),
      primaryFixed: Color(0xffb6ecee),
      onPrimaryFixed: Color(0xff001415),
      primaryFixedDim: Color(0xff9ad0d2),
      onPrimaryFixedVariant: Color(0xff003d3f),
      secondaryFixed: Color(0xff88f3f8),
      onSecondaryFixed: Color(0xff001415),
      secondaryFixedDim: Color(0xff6bd7dc),
      onSecondaryFixedVariant: Color(0xff003d3f),
      tertiaryFixed: Color(0xffd8e4f0),
      onTertiaryFixed: Color(0xff07121a),
      tertiaryFixedDim: Color(0xffbcc8d3),
      onTertiaryFixedVariant: Color(0xff2c3841),
      surfaceDim: Color(0xff111414),
      surfaceBright: Color(0xff424545),
      surfaceContainerLowest: Color(0xff060808),
      surfaceContainerLow: Color(0xff1b1e1e),
      surfaceContainer: Color(0xff262828),
      surfaceContainerHigh: Color(0xff303333),
      surfaceContainerHighest: Color(0xff3b3e3e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc3fafc),
      surfaceTint: Color(0xff9ad0d2),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff97ccce),
      onPrimaryContainer: Color(0xff000e0e),
      secondary: Color(0xffb8fcff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff66d3d8),
      onSecondaryContainer: Color(0xff000e0f),
      tertiary: Color(0xffe5f2fd),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb8c4d0),
      onTertiaryContainer: Color(0xff020c14),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff111414),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe9f2f1),
      outlineVariant: Color(0xffbbc4c4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e3e2),
      inversePrimary: Color(0xff165052),
      primaryFixed: Color(0xffb6ecee),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9ad0d2),
      onPrimaryFixedVariant: Color(0xff001415),
      secondaryFixed: Color(0xff88f3f8),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff6bd7dc),
      onSecondaryFixedVariant: Color(0xff001415),
      tertiaryFixed: Color(0xffd8e4f0),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffbcc8d3),
      onTertiaryFixedVariant: Color(0xff07121a),
      surfaceDim: Color(0xff111414),
      surfaceBright: Color(0xff4e5050),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d2020),
      surfaceContainer: Color(0xff2e3131),
      surfaceContainerHigh: Color(0xff393c3c),
      surfaceContainerHighest: Color(0xff454747),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xfff9e7e7),
    value: Color(0xfff8e7ea),
    light: ColorFamily(
      color: Color(0xff675b5e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff8e7ea),
      onColorContainer: Color(0xff736769),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff675b5e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff8e7ea),
      onColorContainer: Color(0xff736769),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff675b5e),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff8e7ea),
      onColorContainer: Color(0xff736769),
    ),
    dark: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff382e30),
      colorContainer: Color(0xffefdee1),
      onColorContainer: Color(0xff6d6164),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff382e30),
      colorContainer: Color(0xffefdee1),
      onColorContainer: Color(0xff6d6164),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffffffff),
      onColor: Color(0xff382e30),
      colorContainer: Color(0xffefdee1),
      onColorContainer: Color(0xff6d6164),
    ),
  );

  List<ExtendedColor> get extendedColors => [customColor1];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
