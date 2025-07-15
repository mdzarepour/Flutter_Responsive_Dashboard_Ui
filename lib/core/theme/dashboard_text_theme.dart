import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart'; // Import the new dark colors

class DashboardTextTheme {
  DashboardTextTheme._();
  static TextTheme textTheme = TextTheme(
    titleLarge: GoogleFonts.poppins(
      color: DashboardColors
          .secondaryTitleColor, // Changed from justBlack to white
      fontSize: 36,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: GoogleFonts.roboto(
      color: DashboardColors.secondarySubtitleColor, // Grey for subtitles
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: GoogleFonts.roboto(
      color: DashboardColors.secondarySubtitleColor, // Grey for subtitles
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: GoogleFonts.poppins(
      color: DashboardColors.tertiaryColor, // Accent blue for display large
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: GoogleFonts.poppins(
      color: DashboardColors.tertiaryColor, // Accent blue for display medium
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: GoogleFonts.poppins(
      color: DashboardColors.mainColor, // Accent blue for display small
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    labelMedium: GoogleFonts.poppins(
      color: DashboardColors.secondaryTitleColor, // Grey for labels
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: GoogleFonts.poppins(
      color: DashboardColors.secondaryTitleColor, // White for small labels
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  );
}
