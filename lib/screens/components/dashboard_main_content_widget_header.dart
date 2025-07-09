import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';

class DashboardMainContentWidgetHeader extends StatelessWidget {
  const DashboardMainContentWidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: size.width * 0.3,
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
