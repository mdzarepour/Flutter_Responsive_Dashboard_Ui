import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/helpers/responsive_helper.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_activity/dashboard_activity_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_side_menu/dashboard_side_menu_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop =
        ResponsiveHelper.getScreenType(context) == ScreenType.desktop;
    return Scaffold(
      drawer: const SizedBox(width: 300, child: DashboardSideMenuWidget()),
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(
                flex: 2,
                child: SizedBox(child: DashboardSideMenuWidget()),
              ),
            const Expanded(flex: 7, child: DashboardMainContentWidget()),
            if (isDesktop)
              const Expanded(flex: 3, child: DashboardActivityWidget()),
          ],
        ),
      ),
    );
  }
}
