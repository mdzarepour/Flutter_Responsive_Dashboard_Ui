import 'package:flutter/material.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_widgets/dashboard_left_side_menu.dart';

class DesktopDashboardScreen extends StatelessWidget {
  const DesktopDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Row(
        children: [
          DashboardLeftSideMenu(),
          Expanded(
            flex: 6,
            child: ColoredBox(color: Colors.blue, child: Text('data')),
          ),
          Expanded(
            flex: 4,
            child: ColoredBox(color: Colors.pink, child: Text('data')),
          ),
        ],
      ),
    );
  }
}
