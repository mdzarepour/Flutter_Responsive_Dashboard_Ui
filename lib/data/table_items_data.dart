import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/models/table_item_model.dart';

class TableItemsData {
  List<TableItemModel> tableItemsData = [
    TableItemModel(
      date: DashboardStrings.todayDateLabel,
      description: DashboardStrings.outingScheduleDescription,
      isNew: true,
    ),
    TableItemModel(
      date: DashboardStrings.yesterdayMorning,
      description: DashboardStrings.hrMeetingTitle,
      isNew: false,
    ),
    TableItemModel(
      date: DashboardStrings.yesterdayAfternoon,
      description: DashboardStrings.talentRequestTitle,
      isNew: true,
    ),
  ];
}
