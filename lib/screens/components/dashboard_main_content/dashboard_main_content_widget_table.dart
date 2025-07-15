import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/data/table_items_data.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_table_card.dart';

class DashboardMainContentWidgetTable extends StatelessWidget {
  const DashboardMainContentWidgetTable({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final data = TableItemsData();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      decoration: BoxDecoration(
        color: DashboardColors.scaffoldDarkBackGround,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: DashboardColors.drawerIconGrey, width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                DashboardStrings.announcements,
                style: textTheme.labelMedium,
              ),
              Text(
                style: textTheme.titleSmall,
                DashboardStrings.todayDateLabel,
              ),
            ],
          ),
          const SizedBox(height: 20),
          for (int index = 0; index < data.tableItemsData.length; index++)
            DashboardMainContentWidgetTableCard(data: data, index: index),
        ],
      ),
    );
  }
}
