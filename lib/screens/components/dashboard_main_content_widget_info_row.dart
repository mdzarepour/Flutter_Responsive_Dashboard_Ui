import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
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
        padding: EdgeInsets.only(top: 20),
        itemCount: data.infoCardsData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    return Container(
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        border: Border.all(color: DashboardColors.drawerIconGrey, width: 0.1),
        borderRadius: BorderRadiusDirectional.circular(10),
        color: DashboardColors.backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          Text(style: textTheme.labelMedium, data.infoCardsData[index].title),
          Text(
            style: textTheme.labelMedium!.copyWith(fontSize: 30),
            data.infoCardsData[index].value,
          ),
          Text(style: textTheme.labelMedium, data.infoCardsData[index].status),
        ],
      ),
    );
  }
}
