import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/responsive_helper.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_layout/dashboard_center_layout.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_layout/dashboard_left_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenType = ResponsiveHelper.getScreenType(context);
    return Scaffold(
      appBar: screenType == ScreenType.mobile ? AppBar() : null,
      drawer: Drawer(child: DashboardLeftLayout()),
      body: Center(
        child: Row(
          children: [
            if (screenType != ScreenType.mobile) DashboardLeftLayout(),
            DashboardCenterLayout(),
            Expanded(
              flex: screenType == ScreenType.mobile ? 0 : 3,
              child: Center(child: Container(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
