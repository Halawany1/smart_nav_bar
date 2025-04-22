import 'package:flutter/material.dart';
import 'package:smart_nav_bar/models/badge.dart';

class SmartNavItem {
  final String iconPath;
  final String label;
  final Widget? screen;
  final Color? activeColor;
  final Color? inactiveColor;
  final double? iconSize;
  final BadgeNavItem? badge;

  const SmartNavItem({
    required this.iconPath,
    required this.label,
    this.screen,
    this.activeColor,
    this.inactiveColor,
    this.iconSize,
    this.badge,
  });
}
