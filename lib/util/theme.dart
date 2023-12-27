import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.white,
      onPrimary: Colors.black,
      secondary: Colors.purple.shade400,
      onSecondary: Colors.white,
      error: Colors.red.shade800,
      onError: Colors.white,
      background: Colors.white,
      onBackground: Colors.grey.shade800,
      surface: Colors.white,
      onSurface: Colors.grey.shade900,
    ),
  );
}
