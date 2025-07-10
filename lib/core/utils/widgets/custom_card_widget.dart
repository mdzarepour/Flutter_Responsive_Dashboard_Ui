import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: DashboardColors.drawerIconGrey, width: 0.1),
        borderRadius: BorderRadiusDirectional.circular(10),
        color: DashboardColors.backgroundColor,
      ),
      child: child,
    );
  }
}
