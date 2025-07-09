import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/info_cards_data.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content_widget_info_row_card.dart';

class DashboardMainContentWidgetInfoRow extends StatelessWidget {
  const DashboardMainContentWidgetInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    final data = InfoCardsData();
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: data.infoCardsData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 2 / 1,
        ),
        itemBuilder: (context, index) {
          return DashboardMainContentWidgetInfoRowCard(
            data: data,
            index: index,
          );
        },
      ),
    );
  }
}
