import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/helpers/responsive_helper.dart';
import 'package:responsive_dashboard/data/info_cards_data.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_info_row_card.dart';

class DashboardMainContentWidgetInfoRow extends StatelessWidget {
  const DashboardMainContentWidgetInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile =
        ResponsiveHelper.getScreenType(context) == ScreenType.mobile;
    final data = InfoCardsData();
    return GridView.builder(
      shrinkWrap: true,
      itemCount: data.infoCardsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 3,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: isMobile ? 1 / 0.3 : 2 / 1.1,
      ),
      itemBuilder: (context, index) {
        return DashboardMainContentWidgetInfoRowCard(data: data, index: index);
      },
    );
  }
}
