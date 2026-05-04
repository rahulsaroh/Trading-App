import 'package:flutter/material.dart';

/// App color constants for the TradeDesk trading app
class AppColors {
  // Background colors
  static const Color background = Color(0xFF0D0F14);
  static const Color surface = Color(0xFF161A22);
  static const Color surfaceVariant = Color(0xFF1E2229);

  // Accent colors
  static const Color accentGreen = Color(0xFF00C087);
  static const Color accentRed = Color(0xFFFF4757);
  static const Color primaryBlue = Color(0xFF3B82F6);

  // Text colors
  static const Color textPrimary = Color(0xFFE8EAF0);
  static const Color textSecondary = Color(0xFFB0B3B8);
  static const Color textMuted = Color(0xFF6B7280);

  // Border colors
  static const Color border = Color(0xFF374151);
  static const Color borderLight = Color(0xFF4B5563);

  // Status colors
  static const Color success = accentGreen;
  static const Color error = accentRed;
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = primaryBlue;

  // Card colors
  static const Color cardBackground = surface;
  static const Color cardBorder = border;

  // Button colors
  static const Color buttonPrimary = primaryBlue;
  static const Color buttonSecondary = surfaceVariant;
  static const Color buttonDanger = accentRed;
  static const Color buttonSuccess = accentGreen;

  // Input colors
  static const Color inputBackground = surfaceVariant;
  static const Color inputBorder = border;
  static const Color inputBorderFocused = primaryBlue;
  static const Color inputError = accentRed;

  // Chart colors
  static const Color chartLine = primaryBlue;
  static const Color chartCandleGreen = accentGreen;
  static const Color chartCandleRed = accentRed;
  static const Color chartGrid = border;
  static const Color chartVolume = Color(0xFF6366F1);
}
