import 'package:flutter/material.dart';
import 'package:smart_nav_bar/models/badge.dart';

/// A model class representing a single item in the Smart Navigation Bar.
class SmartNavItem {
  /// The path to the icon asset used for this navigation item.
  final String iconPath;

  /// The label text shown below or beside the icon.
  final String? label;

  /// The screen (widget) to be displayed when this item is selected.
  final Widget? screen;

  /// The color used when this item is active (selected).
  final Color? activeColor;

  /// The color used when this item is inactive.
  final Color? inactiveColor;

  /// The size of the icon for this item. If null, the default from [SmartNavStyle] is used.
  final double? iconSize;

  /// An optional badge to display (e.g., notification count).
  final BadgeNavItem? badge;

  /// Creates a [SmartNavItem] for the Smart Navigation Bar.
  ///
  /// [iconPath] and [label] are required.
  const SmartNavItem({
    required this.iconPath,
    this.label,
    this.screen,
    this.activeColor,
    this.inactiveColor,
    this.iconSize,
    this.badge,
  });
}
