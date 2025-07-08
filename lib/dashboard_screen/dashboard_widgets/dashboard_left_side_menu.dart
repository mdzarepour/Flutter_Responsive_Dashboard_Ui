import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';

class DashboardLeftSideMenu extends StatelessWidget {
  const DashboardLeftSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      flex: 2,
      child: ColoredBox(
        color: DashboardColors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 50),
          children: [
            ListTile(
              title: Text(
                DashboardStrings.mainMenuTitle,
                style: textTheme.titleSmall,
              ),
            ),
            ListTile(
              leading: Icon(Iconsax.grid_2),
              title: Text(DashboardStrings.dashboard),
            ),
            ListTile(
              leading: Icon(Iconsax.user),
              title: Text(DashboardStrings.recruitment),
            ),
            ListTile(
              leading: Icon(Iconsax.calendar),
              title: Text(DashboardStrings.schedule),
            ),
            ListTile(
              leading: Icon(Iconsax.profile_2user),
              title: Text(DashboardStrings.employees),
            ),
            ListTile(
              leading: Icon(Iconsax.building_3),
              title: Text(DashboardStrings.departments),
            ),
            ListTile(
              title: Text(
                DashboardStrings.otherMenu,
                style: textTheme.titleSmall,
              ),
            ),
            ListTile(
              leading: Icon(Iconsax.headphone),
              title: Text(DashboardStrings.support),
            ),
            ListTile(
              leading: Icon(Iconsax.setting_2),
              title: Text(DashboardStrings.settings),
            ),
          ],
        ),
      ),
    );
  }
}
