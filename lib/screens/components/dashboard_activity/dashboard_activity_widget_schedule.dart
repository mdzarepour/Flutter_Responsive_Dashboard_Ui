import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/data/schedule_data.dart';
import 'package:responsive_dashboard/screens/components/dashboard_activity/dashboard_activity_widget_schedule_card.dart';

class DashboardActivityWidgetSchedule extends StatelessWidget {
  const DashboardActivityWidgetSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleData();
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        decoration: BoxDecoration(
          color: DashboardColors.justWhite,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: DashboardColors.drawerIconGrey, width: 0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              DashboardStrings.upcomingSchedule,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 20),
            for (int index = 0; index < data.schedules.length; index++)
              DashboardActivityWidgetScheduleCard(data: data, index: index),
          ],
        ),
      ),
    );
  }
}
