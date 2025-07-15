import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/helpers/responsive_helper.dart';
import 'package:responsive_dashboard/data/bar_grapg_data.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_bargraph_row_card.dart';

class DashboardMainContentWidgetBargraphRow extends StatelessWidget {
  const DashboardMainContentWidgetBargraphRow({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile =
        ResponsiveHelper.getScreenType(context) == ScreenType.mobile;
    final data = BarGrapgData();
    return GridView.builder(
      shrinkWrap: true,
      itemCount: data.barGraphsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 1 : 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: isMobile ? 1 / 0.4 : 2 / 1.1,
        mainAxisExtent: 180,
      ),
      itemBuilder: (context, index) {
        return DashboardMainContentWidgetBargraphRowCard(
          data: data,
          index: index,
        );
      },
    );
  }
}
