import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:responsive_dashboard/models/schedule_model.dart';

class ScheduleData {
  final List<ScheduleModel> schedules = [
    ScheduleModel(
      icon: Iconsax.call_incoming,
      message: DashboardStrings.reviewApplications,
    ),
    ScheduleModel(
      icon: Iconsax.zoom,
      message: DashboardStrings.candidateInterview,
    ),
    ScheduleModel(
      icon: Iconsax.add_circle,
      message: DashboardStrings.shortTeamMeeting,
    ),
    ScheduleModel(
      icon: Iconsax.call_incoming,
      message: DashboardStrings.frontEndDevelopers,
    ),
  ];
}
