import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/data/schedule_data.dart';

class DashboardActivityWidgetScheduleCard extends StatelessWidget {
  const DashboardActivityWidgetScheduleCard({
    super.key,
    required this.data,
    required this.index,
  });

  final ScheduleData data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: DashboardColors.justWhite,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: DashboardColors.drawerIconGrey, width: 0.2),
      ),
      child: Text(
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleSmall,
        data.schedules[index].message,
      ),
    );
  }
}
