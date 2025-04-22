import 'package:flutter/material.dart';
import 'package:smart_nav_bar/models/nav_item.dart';

List<SmartNavItem> mockNavItems = [
  const SmartNavItem(iconPath: 'icon1.svg', label: 'Home'),
  const SmartNavItem(iconPath: 'icon2.svg', label: 'Search'),
];

Widget buildTestableWidget(Widget widget) {
  return MaterialApp(
    home: Scaffold(body: widget),
  );
}
