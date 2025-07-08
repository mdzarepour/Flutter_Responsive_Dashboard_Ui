import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';

import 'package:responsive_dashboard/core/utils/responsive_helper.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_widgets/dashboard_left_layout_listtile.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_widgets/dashboard_left_layout_title.dart';

class DashboardLeftLayout extends StatelessWidget {
  const DashboardLeftLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenType screenType = ResponsiveHelper.getScreenType(context);
    return Expanded(
      flex: screenType == ScreenType.desktop ? 2 : 1,
      child: ColoredBox(
        color: DashboardColors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 50),
          children: [
            DashboardLeftLayoutTitle(
              screenType: screenType,
              title: DashboardStrings.mainMenuTitle,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.grid_2,
              title: DashboardStrings.dashboard,
              screenType: screenType,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.user,
              title: DashboardStrings.recuirtment,
              screenType: screenType,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.calendar,
              title: DashboardStrings.schedule,
              screenType: screenType,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.profile_2user,
              title: DashboardStrings.employees,
              screenType: screenType,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.building_3,
              title: DashboardStrings.departments,
              screenType: screenType,
            ),
            DashboardLeftLayoutTitle(
              screenType: screenType,
              title: DashboardStrings.otherMenu,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.headphones,
              title: DashboardStrings.support,
              screenType: screenType,
            ),
            DashboardLeftLayoutListTile(
              icon: Iconsax.setting_2,
              title: DashboardStrings.settings,
              screenType: screenType,
            ),
          ],
        ),
      ),
    );
  }
}
