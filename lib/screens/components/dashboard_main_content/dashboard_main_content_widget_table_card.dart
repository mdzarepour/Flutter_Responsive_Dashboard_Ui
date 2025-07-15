import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/utils/widgets/custom_card_widget.dart';
import 'package:responsive_dashboard/data/table_items_data.dart';

class DashboardMainContentWidgetTableCard extends StatelessWidget {
  final int index;
  final TableItemsData data;
  const DashboardMainContentWidgetTableCard({
    super.key,
    required this.data,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: DashboardColors.materialFirstGrey),
          borderRadius: BorderRadius.circular(8),
          color: DashboardColors.scaffoldDarkBackGround,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          trailing: SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 15,
              children: [
                Icon(
                  data.tableItemsData[index].isNew
                      ? Iconsax.arrow_circle_up
                      : Iconsax.arrow_circle_down,
                ),
                const Icon(Iconsax.more_copy),
              ],
            ),
          ),
          title: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            data.tableItemsData[index].description,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: textTheme.labelSmall!.copyWith(
                color: DashboardColors.secondarySubtitleColor,
              ),
              data.tableItemsData[index].date,
            ),
          ),
        ),
      ),
    );
  }
}
