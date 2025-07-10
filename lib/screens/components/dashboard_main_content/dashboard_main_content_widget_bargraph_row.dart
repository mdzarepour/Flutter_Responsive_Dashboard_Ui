import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/bar_grapg_data.dart';
import 'package:responsive_dashboard/screens/components/dashboard_main_content/dashboard_main_content_widget_bargraph_row_card.dart';

class DashboardMainContentWidgetBargraphRow extends StatelessWidget {
  const DashboardMainContentWidgetBargraphRow({super.key});

  @override
  Widget build(BuildContext context) {
    final data = BarGrapgData();
    return SizedBox(
      width: double.infinity,
      height: 220,
      child: GridView.builder(
        itemCount: data.barGraphsData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1.78 / 1,
        ),
        itemBuilder: (context, index) {
          return DashboardMainContentWidgetBargraphRowCard(
            data: data,
            index: index,
          );
        },
      ),
    );
  }
}
