import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/core/utils/responsive_helper.dart';
import 'package:responsive_dashboard/dashboard_screen/dashboard_widgets/dashboard_center_layout_total_info.dart';

class DashboardCenterLayout extends StatelessWidget {
  const DashboardCenterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenType screenType = ResponsiveHelper.getScreenType(context);
    TextTheme textTheme = Theme.of(context).textTheme;
    return Expanded(
      flex: 7,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ListView(
            padding: EdgeInsets.all(50),
            children: [
              Text(DashboardStrings.dashboard, style: textTheme.displayLarge),
              SizedBox(height: 30),
              _dashboardCenterLayoutTotalInformationRow(
                constraints.maxHeight,
                screenType,
              ),
            ],
          );
        },
      ),
    );
  }

  _dashboardCenterLayoutTotalInformationRow(
    double height,
    ScreenType screenType,
  ) {
    List<DashboardCenterLayoutTotalInfo>
    dashboardCenterLayoutInformatonRowWidgets = [
      DashboardCenterLayoutTotalInfo(
        containerColor: DashboardColors.containerOrange,
        textColor: DashboardColors.secondaryColor,
        title: DashboardStrings.availablePositions,
        value: '24',
      ),
      DashboardCenterLayoutTotalInfo(
        containerColor: DashboardColors.containerBlue,
        textColor: DashboardColors.textBlue,
        title: DashboardStrings.openJobs,
        value: '10',
      ),
      DashboardCenterLayoutTotalInfo(
        containerColor: DashboardColors.containerPink,
        textColor: DashboardColors.textPink,
        title: DashboardStrings.newEmployeeTitle,
        value: '36',
      ),
    ];
    if (screenType != ScreenType.mobile) {
      return SizedBox(
        width: double.infinity,
        height: height * 0.17,
        child: Row(
          spacing: 15,
          children: dashboardCenterLayoutInformatonRowWidgets,
        ),
      );
    } else {
      return SizedBox(
        height: height - 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: double.infinity),
            ...dashboardCenterLayoutInformatonRowWidgets,
          ],
        ),
      );
    }
  }
}
