import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/responsive_helper.dart';

class DashboardLeftLayoutListTile extends StatelessWidget {
  const DashboardLeftLayoutListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.screenType,
  });
  final IconData icon;
  final String title;
  final ScreenType screenType;

  @override
  Widget build(BuildContext context) {
    return screenType == ScreenType.tablet
        ? ListTile(title: Icon(icon, size: 30))
        : ListTile(leading: Icon(icon), title: Text(title));
  }
}
