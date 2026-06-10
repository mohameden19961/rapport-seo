import 'package:flutter/material.dart';

class AppTheme {
  // Primary colors - matching the LaTeX document
  static const Color primary = Color(0xFF1A1A2E);
  static const Color secondary = Color(0xFF16213E);
  static const Color googleBlue = Color(0xFF1565C0);
  static const Color googleRed = Color(0xFFD32F2F);
  static const Color googleYellow = Color(0xFFF9A825);
  static const Color googleGreen = Color(0xFF2E7D32);
  static const Color lightGray = Color(0xFFF8F9FA);
  static const Color darkGray = Color(0xFF2D3436);
  static const Color mediumGray = Color(0xFF636E72);
  static const Color codeBg = Color(0xFFF5F5F5);
  static const Color codeGreen = Color(0xFF2E7D32);
  static const Color codeYellow = Color(0xFFF9A825);
  static const Color purple = Color(0xFF7B1FA2);
  static const Color orange = Color(0xFFE65100);
  static const Color teal = Color(0xFF00796B);
  static const Color sectionColor = Color(0xFF1A1A2E);
  static const Color goldAccent = Color(0xFFF57F17);
  static const Color cyan = Color(0xFF00897B);
  static const Color blue = Color(0xFF1565C0);
  static const Color bgLight = Color(0xFFF8F9FA);
  static const Color bgCard = Color(0xFFFFFFFF);
  static const Color textDark = Color(0xFF2D3436);
  static const Color textMuted = Color(0xFF636E72);
  static const Color accentBg = Color(0xFFE3F2FD);
  static const Color warmBg = Color(0xFFFFF8E1);
  static const Color greenBg = Color(0xFFE8F5E9);
  static const Color orangeBg = Color(0xFFFFF3E0);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        secondary: googleBlue,
        tertiary: cyan,
        error: googleRed,
        surface: Colors.white,
      ),
      scaffoldBackgroundColor: bgLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: primary),
        displayMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: primary),
        headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: primary),
        headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: primary),
        titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: primary),
        bodyLarge: TextStyle(fontSize: 15, color: textDark, height: 1.7),
        bodyMedium: TextStyle(fontSize: 14, color: textDark, height: 1.7),
        bodySmall: TextStyle(fontSize: 12, color: textMuted),
      ),
      cardTheme: CardThemeData(
        elevation: 2,
        color: bgCard,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
