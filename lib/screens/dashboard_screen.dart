import 'package:flutter/material.dart';
import 'package:responsive_dashboard/screens/components/side_menu_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 2, child: SizedBox(child: SideMenuWidget())),
            Expanded(flex: 7, child: Container(color: Colors.blueAccent)),
            Expanded(flex: 3, child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
