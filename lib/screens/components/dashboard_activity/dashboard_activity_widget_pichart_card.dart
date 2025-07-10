import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/data/chart_data.dart';

class DashboardActivityWidgetPichartCard extends StatelessWidget {
  const DashboardActivityWidgetPichartCard({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    final data = ChartsData();
    return SizedBox(
      width: 200,
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 10,
              centerSpaceRadius: 80,
              startDegreeOffset: -90,
              sections: data.chartsData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Text(
                  style: textTheme.labelMedium!.copyWith(fontSize: 24),
                  '70%',
                ),
                Text(
                  style: textTheme.labelMedium!.copyWith(fontSize: 20),
                  'of 100',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
