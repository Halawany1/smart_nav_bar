import 'package:flutter/material.dart';

class NavItemModel {
  final String iconPath;
  final String label;
  final Widget? screen;

  const NavItemModel({
    required this.iconPath,
    required this.label,
    this.screen,
  });
}
