import 'package:flutter/material.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_side_menu_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(child: DashboardSideMenuWidget()),
            ),
            const Expanded(flex: 7, child: DashboardMainContentWidget()),
            Expanded(flex: 3, child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
