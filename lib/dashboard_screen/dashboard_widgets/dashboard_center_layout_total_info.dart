import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';

class DashboardCenterLayoutTotalInfo extends StatelessWidget {
  const DashboardCenterLayoutTotalInfo({
    super.key,
    required this.containerColor,
    required this.textColor,
    required this.title,
    required this.value,
  });
  final Color containerColor;
  final Color textColor;
  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: containerColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DashboardStrings.availablePositions,
              style: textTheme.displayMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: textTheme.displayMedium!.copyWith(fontSize: 36),
              maxLines: 1,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: textTheme.labelMedium!.copyWith(color: textColor),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
