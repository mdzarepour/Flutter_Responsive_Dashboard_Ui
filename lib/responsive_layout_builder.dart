import 'package:flutter/cupertino.dart';

enum ScreenType { mobile, tablet, desktop }

class ResponsiveLayoutBuilder extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;
  const ResponsiveLayoutBuilder({
    super.key,
    required this.desktopLayout,
    required this.mobileLayout,
    required this.tabletLayout,
  });

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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return mobileLayout;
        } else if (constraints.maxWidth > 500 && constraints.maxWidth < 1000) {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
