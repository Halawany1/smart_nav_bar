import 'package:custom_bottom_nav_bar/models/nav_item_model.dart';
import 'package:flutter/material.dart';

List<NavItemModel> mockNavItems = [
  const NavItemModel(iconPath: 'icon1.svg', label: 'Home'),
  const NavItemModel(iconPath: 'icon2.svg', label: 'Search'),
];

Widget buildTestableWidget(Widget widget) {
  return MaterialApp(
    home: Scaffold(body: widget),
  );
}
