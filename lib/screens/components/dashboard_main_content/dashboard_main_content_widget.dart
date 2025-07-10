import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/core/utils/helpers/responsive_helper.dart';
import 'package:responsive_dashboard/screens/components/dashboard_activity/dashboard_activity_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_bargraph_row.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_header.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_info_row.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_table.dart';

class DashboardMainContentWidget extends StatelessWidget {
  const DashboardMainContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop =
        ResponsiveHelper.getScreenType(context) == ScreenType.desktop;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DashboardMainContentWidgetHeader(),
            const SizedBox(height: 30),
            const Divider(
              color: DashboardColors.drawerIconGrey,
              thickness: 0.5,
            ),
            const SizedBox(height: 20),
            Text(
              style: Theme.of(context).textTheme.labelMedium,
              DashboardStrings.dashboard,
            ),
            const SizedBox(height: 10),
            const DashboardMainContentWidgetInfoRow(),
            const SizedBox(height: 10),
            const DashboardMainContentWidgetBargraphRow(),
            const SizedBox(height: 40),
            const DashboardMainContentWidgetTable(),
            SizedBox(height: 40),
            if (!isDesktop) DashboardActivityWidget(),
          ],
        ),
      ),
    );
  }
}
