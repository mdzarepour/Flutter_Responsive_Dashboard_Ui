import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/data/menu_item_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = MenuItemData();
    return Container(
      decoration: BoxDecoration(
        color: DashboardColors.backgroundColor,
        border: Border(
          right: BorderSide(
            color: DashboardColors.secondarySubtitleColor,
            width: 0.2,
          ),
        ),
      ),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        itemCount: data.menuItemsData.length,
        itemBuilder: (context, index) => _sideMenuWidgetListTile(index, data),
      ),
    );
  }

  Widget _sideMenuWidgetListTile(int index, MenuItemData data) {
    final bool isSelected = index == selectedIndex;
    return ListTile(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      selectedColor: DashboardColors.mainColor,
      selected: isSelected,
      title: Text(data.menuItemsData[index].title),
      leading: Icon(data.menuItemsData[index].icon),
    );
  }
}
