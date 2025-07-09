import 'package:flutter/widgets.dart';

class InfoCardModel {
  final String title;
  final IconData icon;
  final String status;
  InfoCardModel({
    required this.status,
    required this.title,
    required this.icon,
  });
}
