import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/custom_card_widget.dart';
import 'package:responsive_dashboard/data/info_cards_data.dart';

class DashboardMainContentWidgetInfoRowCard extends StatelessWidget {
  final InfoCardsData data;
  final int index;
  const DashboardMainContentWidgetInfoRowCard({
    super.key,
    required this.data,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: CustomCardWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 15,
          children: [
            Icon(data.infoCardsData[index].icon),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.labelMedium,
              data.infoCardsData[index].title,
            ),
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,

              style: textTheme.labelMedium,
              data.infoCardsData[index].status,
            ),
          ],
        ),
      ),
    );
  }
}
