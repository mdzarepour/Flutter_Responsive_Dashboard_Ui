import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_bargraph_row.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_header.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_info_row.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_table.dart';

class DashboardMainContentWidget extends StatelessWidget {
  const DashboardMainContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      children: [
        const SizedBox(height: 20),
        const DashboardMainContentWidgetHeader(),
        const SizedBox(height: 30),
        const Divider(color: DashboardColors.drawerIconGrey, thickness: 0.5),
        const SizedBox(height: 20),
        Text(
          style: Theme.of(context).textTheme.labelMedium,
          DashboardStrings.dashboard,
        ),
        const SizedBox(height: 10),
        const DashboardMainContentWidgetInfoRow(),
        const SizedBox(height: 40),
        const DashboardMainContentWidgetBargraphRow(),
        const SizedBox(height: 40),
        const DashboardMainContentWidgetTable(),
        const SizedBox(height: 40),
      ],
    );
  }
}
