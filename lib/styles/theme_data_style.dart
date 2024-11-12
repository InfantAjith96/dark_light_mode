import 'package:flutter/material.dart';

class ThemeDataStyle {

  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      background: Colors.grey.shade100,
      primary: Colors.deepPurple.shade200,
      secondary: Colors.deepPurple.shade300,
      primaryContainer: Colors.deepPurple.shade400
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: Colors.grey.shade900,
      primary: Colors.deepPurple.shade500,
      secondary: Colors.deepPurple.shade600,
      primaryContainer: Colors.deepPurple.shade700
    ),
  );

}