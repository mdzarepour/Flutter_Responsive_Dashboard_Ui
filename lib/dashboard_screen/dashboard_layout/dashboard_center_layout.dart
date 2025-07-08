import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';

class DashboardCenterLayout extends StatelessWidget {
  const DashboardCenterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      flex: 7,
      child: ListView(
        children: [
          Text(DashboardStrings.dashboard, style: textTheme.displayLarge),
        ],
      ),
    );
  }
}
