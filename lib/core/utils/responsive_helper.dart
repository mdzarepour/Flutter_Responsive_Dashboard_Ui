import 'package:flutter/material.dart';

enum ScreenType { mobile, tablet, desktop }

class ClassName {
  static ScreenType getScreenType(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width <= 500) {
      return ScreenType.mobile;
    } else if (width > 500 && width < 1100) {
      return ScreenType.tablet;
    } else {
      return ScreenType.desktop;
    }
  }
}
