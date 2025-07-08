import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/theme/dashboard_theme.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_layouts/desktop_dashboard_screen.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_layouts/mobile_dashboard_screen.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_layouts/tablet_dashboard_scree.dart';
import 'package:responsive_dashboard/responsive_layout_builder.dart';

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
      home: ResponsiveLayoutBuilder(
        desktopLayout: DesktopDashboardScreen(),
        mobileLayout: MobileDashboardScreen(),
        tabletLayout: TabletDashboardScree(),
      ),
    );
  }
}
