import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/constants/dashboard_colors.dart';
import 'package:responsive_dashboard/data/menu_items_data.dart';

class DashboardSideMenuWidget extends StatefulWidget {
  const DashboardSideMenuWidget({super.key});

  @override
  State<DashboardSideMenuWidget> createState() =>
      _DashboardSideMenuWidgetState();
}

class _DashboardSideMenuWidgetState extends State<DashboardSideMenuWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = MenuItemsData();
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

  Widget _sideMenuWidgetListTile(int index, MenuItemsData data) {
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
