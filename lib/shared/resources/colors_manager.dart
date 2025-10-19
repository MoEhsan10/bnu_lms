import 'package:flutter/material.dart';

class ColorsManager {
  // Brand & Primary
  static const Color blue = Color(0xFF2FBAD7); // Primary accent blue (used for active states, icons, highlights)
  static const Color lightBlue = Color(0xFFeaf8fb); // Primary accent blue (used for active states, icons, highlights)

  // Neutrals
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF1A1D1E);
  static const Color grayDark = Color(0xFF6F757A); // Secondary text
  static const Color grayMedium = Color(0xFF9CA3AF); // For subtle text like "15 min left"
  static const Color grayLight = Color(0xFFE5E7EB); // For borders/dividers
  static const Color background = Color(0xFFF9FBFC); // Main screen background
  static const Color card = Color(0xFFFFFFFF); // Card container background

  // Status Colors
  static const Color green = Color(0xFF4CAF50); // Success
  static const Color yellow = Color(0xFFFFC107); // Warning
  static const Color red = Color(0xFFE74C3C); // Error/Alert

  // Support / Accent
  static const Color blueLight = Color(0xFFD9F2F8); // Icon backgrounds, soft accents
}
