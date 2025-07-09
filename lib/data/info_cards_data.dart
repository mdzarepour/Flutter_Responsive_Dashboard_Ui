import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/models/info_card_model.dart';

class InfoCardsData {
  List<InfoCardModel> infoCardsData = [
    InfoCardModel(
      status: DashboardStrings.urgentlyNeededCount,
      title: DashboardStrings.availablePositions,
      icon: Iconsax.arrow_up_1,
    ),
    InfoCardModel(
      status: DashboardStrings.activeHiringCount,
      title: DashboardStrings.openJobs,
      icon: Iconsax.arrow_down,
    ),
    InfoCardModel(
      status: DashboardStrings.departmentCountLabel,
      title: DashboardStrings.newEmployeeTitle,
      icon: Iconsax.arrow_down,
    ),
  ];
}
