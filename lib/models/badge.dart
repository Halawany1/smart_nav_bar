import 'package:flutter/material.dart';

/// A model class that represents a badge to be shown on a navigation item.
class BadgeNavItem {
  /// A custom text to display inside the badge (e.g., "NEW").
  ///
  /// If both [text] and [count] are provided, [text] takes precedence.
  final String? text;

  /// A numerical value to display inside the badge (e.g., number of notifications).
  final int? count;

  /// The background color of the badge. Defaults to [Colors.red].
  final Color color;

  /// The text color inside the badge. Defaults to [Colors.white].
  final Color textColor;

  /// The size (diameter) of the badge.
  final double size;

  /// Whether to hide the badge if [count] is zero or null.
  ///
  /// Defaults to `true`.
  final bool hideWhenZero;

  /// Creates a [BadgeNavItem] used to display a notification or label
  /// over a navigation item icon.
  const BadgeNavItem({
    this.text,
    this.count,
    this.color = Colors.red,
    this.textColor = Colors.white,
    this.size = 16,
    this.hideWhenZero = true,
  });
}
