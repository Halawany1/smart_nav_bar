import 'package:flutter/material.dart';
import 'bottom_nav_item.dart';
import 'models/nav_item_model.dart';
import 'models/style_config.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final List<NavItemModel> items;
  final ValueChanged<int> onTap;
  final BottomNavBarStyle style;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.style = const BottomNavBarStyle(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: style.margin,
      padding: style.padding,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        border: Border.all(color: style.borderColor),
        borderRadius: BorderRadius.circular(style.borderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items
            .asMap()
            .entries
            .map((entry) => _buildNavItem(entry.key, entry.value))
            .toList(),
      ),
    );
  }

  Widget _buildNavItem(int index, NavItemModel item) {
    return BottomNavItem(
      index: index,
      currentIndex: currentIndex,
      iconPath: item.iconPath,
      label: item.label,
      onTap: onTap,
      activeColor: style.activeColor,
      inactiveColor: style.inactiveColor,
      activeTextStyle: style.activeTextStyle,
      inactiveTextStyle: style.inactiveTextStyle,
      iconSize: style.iconSize,
      scaleFactor: style.scaleFactor,
    );
  }
}