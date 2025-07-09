import 'package:responsive_dashboard/core/constants/dashboard_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:responsive_dashboard/models/menu_item_model.dart';

class MenuItemsData {
  List<MenuItemModel> menuItemsData = [
    MenuItemModel(icon: Iconsax.grid_2, title: DashboardStrings.dashboard),
    MenuItemModel(icon: Iconsax.user, title: DashboardStrings.recuirtment),
    MenuItemModel(icon: Iconsax.calendar, title: DashboardStrings.schedule),
    MenuItemModel(icon: Iconsax.link_2, title: DashboardStrings.employees),
    MenuItemModel(icon: Iconsax.buliding, title: DashboardStrings.departments),
    MenuItemModel(icon: Iconsax.headphones, title: DashboardStrings.support),
    MenuItemModel(icon: Iconsax.setting_2, title: DashboardStrings.settings),
  ];
}
