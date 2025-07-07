import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/theme/dashboard_text_theme.dart';

class DashboardTheme {
  DashboardTheme._();
  static ThemeData dashboardTheme = ThemeData(
    textTheme: DashboardTextTheme.textTheme,
  );
}
