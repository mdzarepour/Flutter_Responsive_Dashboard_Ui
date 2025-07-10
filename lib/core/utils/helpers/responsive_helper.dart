import 'package:flutter/widgets.dart';

enum ScreenType { desktop, tablet, mobile }

class ResponsiveHelper {
  static ScreenType getScreenType(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 850) {
      return ScreenType.mobile;
    } else if (width < 1100 && width >= 850) {
      return ScreenType.tablet;
    } else {
      return ScreenType.desktop;
    }
  }
}
