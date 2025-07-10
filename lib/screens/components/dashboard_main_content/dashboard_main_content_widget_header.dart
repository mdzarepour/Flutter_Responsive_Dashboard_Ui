import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/core/utils/helpers/responsive_helper.dart';

class DashboardMainContentWidgetHeader extends StatelessWidget {
  const DashboardMainContentWidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop =
        ResponsiveHelper.getScreenType(context) == ScreenType.desktop;
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        if (!isDesktop)
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Iconsax.menu_1, size: 35),
          ),
        const SizedBox(width: 10),
        SizedBox(
          width: size.width * 0.35,
          height: size.height * 0.058,
          child: TextField(
            style: Theme.of(context).textTheme.labelMedium,
            cursorColor: DashboardColors.drawerIconGrey,
            cursorWidth: 0.7,
            decoration: InputDecoration(
              suffixIcon: const Icon(Iconsax.search_normal_1_copy, size: 22),
              hint: Text(
                DashboardStrings.search,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: DashboardColors.drawerIconGrey,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Row(
          mainAxisSize: MainAxisSize.max,
          spacing: 20,
          children: [
            Icon(size: size.height * 0.045, Iconsax.notification_1),
            Icon(size: size.height * 0.045, Iconsax.message),
            Icon(size: size.height * 0.045, Iconsax.profile_2user),
          ],
        ),
      ],
    );
  }
}
