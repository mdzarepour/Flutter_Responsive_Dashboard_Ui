import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/models/bar_graph_model.dart';
import 'package:responsive_dashboard/models/graph_model.dart';

class BarGrapgData {
  final List<BarGraphModel> barGraphsData = [
    BarGraphModel(
      color: DashboardColors.drawerIconGrey,
      label: 'Activity level',
      graph: [
        GraphModel(x: 0, y: 11),
        GraphModel(x: 1, y: 8),
        GraphModel(x: 2, y: 6),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 8),
        GraphModel(x: 5, y: 4),
        GraphModel(x: 3, y: 6),
        GraphModel(x: 4, y: 8),
        GraphModel(x: 5, y: 4),
      ],
    ),
    BarGraphModel(
      color: DashboardColors.drawerIconGrey,
      label: 'Hydrate level',
      graph: [
        GraphModel(x: 0, y: 7),
        GraphModel(x: 1, y: 4),
        GraphModel(x: 2, y: 4),
        GraphModel(x: 3, y: 3),
        GraphModel(x: 4, y: 9),
        GraphModel(x: 5, y: 2),
        GraphModel(x: 3, y: 3),
        GraphModel(x: 4, y: 9),
        GraphModel(x: 5, y: 2),
      ],
    ),
  ];
  final List<String> labels = ['M', 'T', 'W', 'T', 'F', 'S'];
}
