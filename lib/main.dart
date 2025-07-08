import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/theme/dashboard_theme.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_screen.dart';

void main(List<String> args) {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DashboardTheme.dashboardTheme,
      home: DashboardScreen(),
    );
  }
}
