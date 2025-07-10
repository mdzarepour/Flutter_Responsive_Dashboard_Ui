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
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      decoration: const BoxDecoration(
        color: DashboardColors.justWhite,
        border: Border(
          left: BorderSide(
            color: DashboardColors.secondarySubtitleColor,
            width: 0.2,
          ),
        ),
      ),
      child: Column(
        spacing: 10,
        children: [
          const DashboardActivityWidgetPichartCard(),
          Text(
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
            'Details',
          ),
          const SizedBox(height: 20),
          const DashboardActivityWidgetSchedule(),
        ],
      ),
    );
  }
}
