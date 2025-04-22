import 'package:flutter/material.dart';
import 'package:smart_nav_bar/models/nav_item_model.dart';

List<NavItemModel> mockNavItems = [
  const NavItemModel(iconPath: 'icon1.svg', label: 'Home'),
  const NavItemModel(iconPath: 'icon2.svg', label: 'Search'),
];

Widget buildTestableWidget(Widget widget) {
  return MaterialApp(
    home: Scaffold(body: widget),
  );
}
