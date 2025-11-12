import 'package:flutter/material.dart';

TextTheme createTextTheme(BuildContext context) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

  TextTheme textTheme = baseTextTheme.copyWith(
    bodyLarge: baseTextTheme.bodyLarge?.copyWith(fontFamily: 'Jannalt'),
    bodyMedium: baseTextTheme.bodyMedium?.copyWith(fontFamily: 'Jannalt'),
    bodySmall: baseTextTheme.bodySmall?.copyWith(fontFamily: 'Jannalt'),
    labelLarge: baseTextTheme.labelLarge?.copyWith(fontFamily: 'Jannalt'),
    labelMedium: baseTextTheme.labelMedium?.copyWith(fontFamily: 'Jannalt'),
    labelSmall: baseTextTheme.labelSmall?.copyWith(fontFamily: 'Jannalt'),
  );
  return textTheme;
}
