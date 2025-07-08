import 'package:flutter/material.dart';

enum ScreenType { mobile, tablet, desktop }

class ResponsiveHelper {
  static ScreenType getScreenType(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    if (width <= 850) {
      return ScreenType.mobile;
    } else if (width > 850 && width < 1100) {
      return ScreenType.tablet;
    } else {
      return ScreenType.desktop;
    }
  }
}
