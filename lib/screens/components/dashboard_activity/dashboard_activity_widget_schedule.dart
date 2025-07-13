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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: ColoredBox(
        color: DashboardColors.justWhite,
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
