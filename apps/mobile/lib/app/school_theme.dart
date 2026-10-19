import 'package:flutter/material.dart';

class SchoolTheme {
  static const green = Color(0xFF17613B);
  static const darkGreen = Color(0xFF124A2E);
  static const orange = Color(0xFFF58220);
  static const paleGreen = Color(0xFFEAF5EF);
  static const paleOrange = Color(0xFFFFF2E9);
  static const ink = Color(0xFF25332B);
  static const muted = Color(0xFF78827D);

  static ThemeData get light {
    final scheme = ColorScheme.fromSeed(
      seedColor: green,
      primary: green,
      secondary: orange,
      surface: Colors.white,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: green,
        foregroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF8FAF8),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 13,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFDCE4DE)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xFFDCE4DE)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: green, width: 1.5),
        ),
      ),
    );
  }
}
