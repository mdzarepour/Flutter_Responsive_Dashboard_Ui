import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/custom_card_widget.dart';
import 'package:responsive_dashboard/data/bar_grapg_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/models/graph_model.dart';

class DashboardMainContentWidgetBargraph extends StatelessWidget {
  const DashboardMainContentWidgetBargraph({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
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
          return CustomCardWidget(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  style: textTheme.labelMedium,
                  data.barGraphsData[index].label,
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: BarChart(
                    BarChartData(
                      borderData: FlBorderData(show: false),
                      titlesData: FlTitlesData(
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) =>
                                Text(data.labels[value.toInt()]),
                          ),
                        ),
                      ),
                      gridData: const FlGridData(show: false),
                      barGroups: _gnerateChartGroups(
                        color: data.barGraphsData[index].color,
                        graphList: data.barGraphsData[index].graph,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _gnerateChartGroups({
    required List<GraphModel> graphList,
    required Color color,
  }) {
    return graphList.map((e) {
      return BarChartGroupData(
        x: e.x.toInt(),
        barRods: [BarChartRodData(color: color, toY: e.y)],
      );
    }).toList();
  }
}
