import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/theme/dashboard_text_theme.dart';

class DashboardTheme {
  DashboardTheme._();
  static ThemeData dashboardTheme = ThemeData(
    iconTheme: const IconThemeData(color: DashboardColors.drawerIconGrey),
    textTheme: DashboardTextTheme.textTheme,
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: DashboardColors.drawerIconGrey,
      contentPadding: const EdgeInsets.only(bottom: 10, left: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: DashboardColors.drawerIconGrey,
          width: 0.3,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: DashboardColors.drawerIconGrey,
          width: 0.3,
        ),
      ),
      filled: true,
      fillColor: DashboardColors.backgroundColor,
    ),
    scaffoldBackgroundColor: DashboardColors.justWhite,
    listTileTheme: ListTileThemeData(
      titleTextStyle: DashboardTextTheme.textTheme.titleMedium,
      iconColor: DashboardColors.drawerIconGrey,
    ),
  );
}
