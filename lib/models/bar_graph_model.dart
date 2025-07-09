import 'dart:ui';
import 'package:responsive_dashboard/models/graph_model.dart';

class BarGraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;
  BarGraphModel({
    required this.color,
    required this.graph,
    required this.label,
  });
}
