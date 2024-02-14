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
      onBackground: Colors.grey.shade100,
      surface: Colors.white,
      onSurface: Colors.black87,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 2,
      color: Colors.white,
    ),
  );
}
