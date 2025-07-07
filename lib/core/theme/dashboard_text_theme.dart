import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';

class DashboardTextTheme {
  DashboardTextTheme._();
  static TextTheme textTheme = TextTheme(
    titleLarge: GoogleFonts.poppins(
      color: DashboardColors.justBlack,
      fontSize: 36,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: GoogleFonts.roboto(
      color: DashboardColors.secondarySubtitleColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: GoogleFonts.roboto(
      color: DashboardColors.secondarySubtitleColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: GoogleFonts.poppins(
      color: DashboardColors.tertiaryColor,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: GoogleFonts.poppins(
      color: DashboardColors.tertiaryColor,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: GoogleFonts.poppins(
      color: DashboardColors.mainColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    labelMedium: GoogleFonts.poppins(
      color: DashboardColors.secondarySubtitleColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: GoogleFonts.poppins(
      color: DashboardColors.justWhiter,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  );
}
