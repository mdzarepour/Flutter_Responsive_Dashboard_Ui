import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/responsive_helper.dart';

class DashboardLeftLayoutTitle extends StatelessWidget {
  const DashboardLeftLayoutTitle({
    super.key,
    required this.screenType,
    required this.title,
  });
  final String title;
  final ScreenType screenType;

  @override
  Widget build(BuildContext context) {
    return screenType == ScreenType.tablet
        ? ListTile(
            title: Text(
              textAlign: TextAlign.center,
              title,
              style: Theme.of(
                context,
              ).textTheme.titleSmall!.copyWith(fontSize: 10),
            ),
          )
        : ListTile(
            title: Text(
              textAlign: TextAlign.start,
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          );
  }
}
