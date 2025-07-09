import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/utils/custom_card_widget.dart';
import 'package:responsive_dashboard/data/info_cards_data.dart';

class DashboardMainContentWidgetInfoRow extends StatelessWidget {
  const DashboardMainContentWidgetInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final data = InfoCardsData();
    return SizedBox(
      height: double.maxFinite,
      width: double.infinity,
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: data.infoCardsData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1.8,
        ),
        itemBuilder: (context, index) {
          return _mainContentWidgetInfoCard(data, index, textTheme);
        },
      ),
    );
  }

  Widget _mainContentWidgetInfoCard(
    InfoCardsData data,
    int index,
    TextTheme textTheme,
  ) {
    return CustomCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          Icon(data.infoCardsData[index].icon),
          Text(style: textTheme.labelMedium, data.infoCardsData[index].title),
          Text(style: textTheme.labelMedium, data.infoCardsData[index].status),
        ],
      ),
    );
  }
}
