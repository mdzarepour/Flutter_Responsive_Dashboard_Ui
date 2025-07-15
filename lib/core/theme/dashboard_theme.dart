import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/theme/dashboard_text_theme.dart';

class DashboardTheme {
  DashboardTheme._();
  static ThemeData dashboardTheme = ThemeData(
    brightness: Brightness
        .dark, // Crucial for Flutter's built-in dark theme adaptations
    scaffoldBackgroundColor:
        DashboardColors.scaffoldDarkBackGround, // Main background
    // Define a dark color scheme for more comprehensive themeing
    colorScheme: ColorScheme.dark(
      primary: DashboardColors.materialBlue, // Primary accent color
      onPrimary:
          DashboardColors.materialWhite, // Color for text/icons on primary
      secondary: DashboardColors.materialYellow, // Secondary accent color
      onSecondary:
          DashboardColors.materialWhite, // Color for text/icons on secondary
      surface: DashboardColors.materialFirstGrey, // Card/surface backgrounds
      onSurface: DashboardColors.materialWhite, // Text/icons on surfaces
      background: DashboardColors.scaffoldDarkBackGround, // General background
      onBackground: DashboardColors.materialWhite, // Text/icons on background
      error: DashboardColors.materialRed, // Error color
      onError: DashboardColors.materialWhite, // Text/icons on error
      brightness: Brightness.dark,
    ),

    iconTheme: const IconThemeData(
      color: DashboardColors.drawerIconGrey,
    ), // Icon color
    textTheme: DashboardTextTheme.textTheme, // Use the new dark text theme

    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: DashboardColors.drawerIconGrey, // Suffix icon color
      contentPadding: const EdgeInsets.only(bottom: 10, left: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: DashboardColors.materialSecondGrey, // Border color
          width: 0.3,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: DashboardColors.materialBlue, // Focused border accent
          width: 0.8, // Slightly thicker when focused
        ),
      ),
      filled: true,
      fillColor: DashboardColors.materialFirstGrey, // Input field background
      hintStyle: GoogleFonts.roboto(
        color: DashboardColors.materialSecondGrey, // Hint text color
      ),
      labelStyle: GoogleFonts.roboto(
        color: DashboardColors.materialWhite, // Label text color
      ),
    ),

    listTileTheme: ListTileThemeData(
      contentPadding: EdgeInsets.zero,
      titleTextStyle: DashboardTextTheme.textTheme.titleMedium?.copyWith(
        color: DashboardColors.materialWhite, // Ensure title is white
      ),
      subtitleTextStyle: DashboardTextTheme.textTheme.titleSmall?.copyWith(
        color: DashboardColors.materialSecondGrey, // Ensure subtitle is grey
      ),
      iconColor: DashboardColors.drawerIconGrey, // Icon color in list tiles
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: DashboardColors
          .scaffoldLightBackGround, // A slightly different dark shade for AppBar
      foregroundColor:
          DashboardColors.materialWhite, // Text and icon color on AppBar
      titleTextStyle: GoogleFonts.poppins(
        color: DashboardColors.materialWhite,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: const IconThemeData(color: DashboardColors.materialWhite),
    ),

    // Card Theme

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DashboardColors.materialBlue, // Button background
        foregroundColor:
            DashboardColors.materialWhite, // Button text/icon color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),

    // Text Button Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: DashboardColors.materialBlue, // Text button color
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: DashboardColors.materialYellow, // FAB background
      foregroundColor: DashboardColors.materialWhite, // FAB icon color
    ),

    // BottomNavigationBar Theme
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor:
          DashboardColors.scaffoldLightBackGround, // Bottom nav background
      selectedItemColor: DashboardColors.materialBlue, // Selected icon/text
      unselectedItemColor:
          DashboardColors.materialSecondGrey, // Unselected icon/text
      type: BottomNavigationBarType.fixed, // Or .shifting based on your design
      elevation: 8.0,
    ),

    // Drawer Theme
    drawerTheme: DrawerThemeData(
      backgroundColor:
          DashboardColors.scaffoldLightBackGround, // Drawer background
      width: 250, // Example width
    ),
  );
}
