import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/utils/custom_card_widget.dart';
import 'package:responsive_dashboard/screens/components/dashboard_activity/dashboard_activity_widget_pichart_card.dart';
import 'package:responsive_dashboard/screens/components/dashboard_activity/dashboard_activity_widget_schedule.dart';

class DashboardActivityWidget extends StatelessWidget {
  const DashboardActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: DashboardColors.justWhite,
        border: Border(
          left: BorderSide(
            color: DashboardColors.secondarySubtitleColor,
            width: 0.2,
          ),
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        children: [
          const DashboardActivityWidgetPichartCard(),
          const SizedBox(height: 14),
          Text(
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
            'Details',
          ),
          const SizedBox(height: 50),
          const DashboardActivityWidgetSchedule(),
          const SizedBox(height: 30),
          const DashboardActivityWidgetSchedule(),
        ],
      ),
    );
  }
}
