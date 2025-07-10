import 'package:flutter/material.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_activity/dashboard_activity_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_side_menu/dashboard_side_menu_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(child: DashboardSideMenuWidget()),
            ),
            Expanded(flex: 7, child: DashboardMainContentWidget()),
            Expanded(flex: 3, child: DashboardActivityWidget()),
          ],
        ),
      ),
    );
  }
}
