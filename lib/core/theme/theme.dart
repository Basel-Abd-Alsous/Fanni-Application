import "package:flutter/material.dart";

import "../function/hex_color.dart";
import "../unit/app_color.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: HexColor.fromHex('#e44a26'),
      surfaceTint: const Color(0xffb42803),
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xffd43f1b),
      onPrimaryContainer: const Color(0xfffffbff),
      secondary: const Color(0xff9a4430),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xffff937a),
      onSecondaryContainer: const Color(0xff772a18),
      tertiary: const Color(0xff755700),
      onTertiary: const Color(0xffffffff),
      tertiaryContainer: const Color(0xff946f00),
      onTertiaryContainer: const Color(0xfffffbff),
      error: const Color(0xffba1a1a),
      onError: const Color(0xffffffff),
      errorContainer: const Color(0xffffdad6),
      onErrorContainer: const Color(0xff93000a),
      surface: const Color(0xfffff8f6),
      onSurface: const Color(0xff271814),
      onSurfaceVariant: const Color(0xff5a413a),
      outline: const Color(0xff8f7069),
      outlineVariant: const Color(0xffe3beb6),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xff3d2c28),
      inversePrimary: const Color(0xffffb4a3),
      primaryFixed: const Color(0xffffdad2),
      onPrimaryFixed: const Color(0xff3d0700),
      primaryFixedDim: const Color(0xffffb4a3),
      onPrimaryFixedVariant: const Color(0xff8b1b00),
      secondaryFixed: const Color(0xffffdad2),
      onSecondaryFixed: const Color(0xff3d0700),
      secondaryFixedDim: const Color(0xffffb4a3),
      onSecondaryFixedVariant: const Color(0xff7c2d1b),
      tertiaryFixed: const Color(0xffffdf9c),
      onTertiaryFixed: const Color(0xff251a00),
      tertiaryFixedDim: const Color(0xfff0c04e),
      onTertiaryFixedVariant: const Color(0xff5b4300),
      surfaceDim: const Color(0xfff0d4ce),
      surfaceBright: const Color(0xfffff8f6),
      surfaceContainerLowest: const Color(0xffffffff),
      surfaceContainerLow: const Color(0xfffff0ed),
      surfaceContainer: const Color(0xffffe9e4),
      surfaceContainerHigh: const Color(0xfffee2dc),
      surfaceContainerHighest: const Color(0xfff9dcd6),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d1300),
      surfaceTint: Color(0xffb42803),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc93714),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff651d0c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffad523d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff463300),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8a6800),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff1b0e0b),
      onSurfaceVariant: Color(0xff48302b),
      outline: Color(0xff674c46),
      outlineVariant: Color(0xff84665f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3d2c28),
      inversePrimary: Color(0xffffb4a3),
      primaryFixed: Color(0xffc93714),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xffa42100),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffad523d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8e3b27),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff8a6800),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff6c5000),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbc1bb),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0ed),
      surfaceContainer: Color(0xfffee2dc),
      surfaceContainerHigh: Color(0xfff3d7d1),
      surfaceContainerHighest: Color(0xffe7ccc6),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5b0e00),
      surfaceTint: Color(0xffb42803),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8f1c00),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff571304),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff7f301d),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3a2a00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5e4500),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff3d2621),
      outlineVariant: Color(0xff5d433d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff3d2c28),
      inversePrimary: Color(0xffffb4a3),
      primaryFixed: Color(0xff8f1c00),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff661100),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff7f301d),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff601a09),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5e4500),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff423000),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffcdb3ad),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffede9),
      surfaceContainer: Color(0xfff9dcd6),
      surfaceContainerHigh: Color(0xffeacec8),
      surfaceContainerHighest: Color(0xffdbc1bb),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb4a3),
      surfaceTint: Color(0xffffb4a3),
      onPrimary: Color(0xff621000),
      primaryContainer: Color(0xfffb5a35),
      onPrimaryContainer: Color(0xff350500),
      secondary: Color(0xffffb4a3),
      onSecondary: Color(0xff5d1707),
      secondaryContainer: Color(0xff7c2d1b),
      onSecondaryContainer: Color(0xffff9b83),
      tertiary: Color(0xfff0c04e),
      onTertiary: Color(0xff3f2e00),
      tertiaryContainer: Color(0xffb48a1a),
      onTertiaryContainer: Color(0xff201600),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1e100d),
      onSurface: Color(0xfff9dcd6),
      onSurfaceVariant: Color(0xffe3beb6),
      outline: Color(0xffaa8982),
      outlineVariant: Color(0xff5a413a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff9dcd6),
      inversePrimary: Color(0xffb42803),
      primaryFixed: Color(0xffffdad2),
      onPrimaryFixed: Color(0xff3d0700),
      primaryFixedDim: Color(0xffffb4a3),
      onPrimaryFixedVariant: Color(0xff8b1b00),
      secondaryFixed: Color(0xffffdad2),
      onSecondaryFixed: Color(0xff3d0700),
      secondaryFixedDim: Color(0xffffb4a3),
      onSecondaryFixedVariant: Color(0xff7c2d1b),
      tertiaryFixed: Color(0xffffdf9c),
      onTertiaryFixed: Color(0xff251a00),
      tertiaryFixedDim: Color(0xfff0c04e),
      onTertiaryFixedVariant: Color(0xff5b4300),
      surfaceDim: Color(0xff1e100d),
      surfaceBright: Color(0xff473531),
      surfaceContainerLowest: Color(0xff180b08),
      surfaceContainerLow: Color(0xff271814),
      surfaceContainer: Color(0xff2b1c18),
      surfaceContainerHigh: Color(0xff362622),
      surfaceContainerHighest: Color(0xff42312d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd2c8),
      surfaceTint: Color(0xffffb4a3),
      onPrimary: Color(0xff4f0b00),
      primaryContainer: Color(0xfffb5a35),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffd2c8),
      onSecondary: Color(0xff4e0c01),
      secondaryContainer: Color(0xffd9745c),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffd782),
      onTertiary: Color(0xff322300),
      tertiaryContainer: Color(0xffb48a1a),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1e100d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffad4cb),
      outline: Color(0xffcdaaa2),
      outlineVariant: Color(0xffaa8981),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff9dcd6),
      inversePrimary: Color(0xff8d1b00),
      primaryFixed: Color(0xffffdad2),
      onPrimaryFixed: Color(0xff2a0300),
      primaryFixedDim: Color(0xffffb4a3),
      onPrimaryFixedVariant: Color(0xff6d1300),
      secondaryFixed: Color(0xffffdad2),
      onSecondaryFixed: Color(0xff2a0300),
      secondaryFixedDim: Color(0xffffb4a3),
      onSecondaryFixedVariant: Color(0xff651d0c),
      tertiaryFixed: Color(0xffffdf9c),
      onTertiaryFixed: Color(0xff181000),
      tertiaryFixedDim: Color(0xfff0c04e),
      onTertiaryFixedVariant: Color(0xff463300),
      surfaceDim: Color(0xff1e100d),
      surfaceBright: Color(0xff53403c),
      surfaceContainerLowest: Color(0xff100503),
      surfaceContainerLow: Color(0xff291a16),
      surfaceContainer: Color(0xff342420),
      surfaceContainerHigh: Color(0xff402f2b),
      surfaceContainerHighest: Color(0xff4c3935),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece8),
      surfaceTint: Color(0xffffb4a3),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffaf9c),
      onPrimaryContainer: Color(0xff1f0200),
      secondary: Color(0xffffece8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffaf9c),
      onSecondaryContainer: Color(0xff1f0200),
      tertiary: Color(0xffffeed0),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffebbc4b),
      onTertiaryContainer: Color(0xff110a00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1e100d),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece8),
      outlineVariant: Color(0xffdfbab2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff9dcd6),
      inversePrimary: Color(0xff8d1b00),
      primaryFixed: Color(0xffffdad2),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb4a3),
      onPrimaryFixedVariant: Color(0xff2a0300),
      secondaryFixed: Color(0xffffdad2),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb4a3),
      onSecondaryFixedVariant: Color(0xff2a0300),
      tertiaryFixed: Color(0xffffdf9c),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfff0c04e),
      onTertiaryFixedVariant: Color(0xff181000),
      surfaceDim: Color(0xff1e100d),
      surfaceBright: Color(0xff5f4c47),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff2b1c18),
      surfaceContainer: Color(0xff3d2c28),
      surfaceContainerHigh: Color(0xff493733),
      surfaceContainerHighest: Color(0xff55423e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    cardTheme: CardThemeData(color: AppColor.white),
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: HexColor.fromHex('F3F5FD'),
      shadowColor: colorScheme.surface,
      surfaceTintColor: colorScheme.surface,
    ),
    textTheme: textTheme.apply(bodyColor: colorScheme.onSurface, displayColor: colorScheme.onSurface),
    scaffoldBackgroundColor: HexColor.fromHex('F3F5FD'),
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
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
  const ColorFamily({required this.color, required this.onColor, required this.colorContainer, required this.onColorContainer});

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
