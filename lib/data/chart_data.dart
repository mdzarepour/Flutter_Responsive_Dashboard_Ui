import 'package:fl_chart/fl_chart.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';

class ChartsData {
  final List<PieChartSectionData> chartsData = [
    PieChartSectionData(
      color: DashboardColors.drawerIconGrey,
      value: 25,
      showTitle: false,
      radius: 15,
    ),
    PieChartSectionData(
      color: DashboardColors.containerPink,
      value: 18,
      showTitle: false,
      radius: 15,
    ),
    PieChartSectionData(
      color: DashboardColors.containerOrange,
      value: 11,
      showTitle: false,
      radius: 15,
    ),
    PieChartSectionData(
      color: DashboardColors.containerBlue,
      value: 9,
      showTitle: false,
      radius: 15,
    ),
  ];
}
