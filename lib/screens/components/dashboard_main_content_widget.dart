import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content_widget_header.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content_widget_info_row.dart';

class DashboardMainContentWidget extends StatelessWidget {
  const DashboardMainContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 50),
      children: [
        SizedBox(height: 50),
        DashboardMainContentWidgetHeader(),
        SizedBox(height: 30),
        Divider(color: DashboardColors.drawerIconGrey, thickness: 0.5),
        SizedBox(height: 30),
        Text(
          style: Theme.of(
            context,
          ).textTheme.labelMedium!.copyWith(fontSize: 26),
          DashboardStrings.dashboard,
        ),
        DashboardMainContentWidgetInfoRow(),
      ],
    );
  }
}
