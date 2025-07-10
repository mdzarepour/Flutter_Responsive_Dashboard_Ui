import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
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
