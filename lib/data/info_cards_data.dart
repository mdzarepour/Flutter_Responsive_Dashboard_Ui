import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/models/info_card_model.dart';

class InfoCardsData {
  List<InfoCardModel> infoCardsData = [
    InfoCardModel(
      status: DashboardStrings.urgentlyNeededCount,
      title: DashboardStrings.availablePositions,
      value: '24',
    ),
    InfoCardModel(
      status: DashboardStrings.activeHiringCount,
      title: DashboardStrings.openJobs,
      value: '93',
    ),
    InfoCardModel(
      status: DashboardStrings.departmentCountLabel,
      title: DashboardStrings.newEmployeeTitle,
      value: '10',
    ),
  ];
}
