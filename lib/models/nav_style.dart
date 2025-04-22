import 'package:flutter/material.dart';

/// A configuration class for customizing the appearance and behavior
/// of the Smart Navigation Bar.
class SmartNavStyle {
  /// The background color of the navigation bar.
  final Color backgroundColor;

  /// The border color of the navigation bar. Optional.
  final Color? borderColor;

  /// The border radius of the navigation bar container.
  final double borderRadius;

  /// The margin around the navigation bar.
  final EdgeInsets margin;

  /// The padding inside the navigation bar container.
  final EdgeInsets padding;

  /// The default active color for icons and text.
  final Color defaultActiveColor;

  /// The default inactive color for icons and text.
  final Color defaultInactiveColor;

  /// The default text style for active navigation items.
  final TextStyle defaultActiveTextStyle;

  /// The default text style for inactive navigation items.
  final TextStyle defaultInactiveTextStyle;

  /// The default size for icons in the navigation bar.
  final double defaultIconSize;

  /// The scale factor for the selected item animation.
  final double scaleFactor;

  /// The curve used for animations.
  final Curve animationCurve;

  /// The duration of the item selection animation.
  final Duration animationDuration;

  /// Whether to show labels under icons or not.
  final bool showLabel;

  /// Creates a [SmartNavStyle] with the given customization options.
  ///
  /// All parameters are optional and have default values.
  const SmartNavStyle({
    this.backgroundColor = Colors.white,
    this.borderColor,
    this.borderRadius = 20.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.padding = const EdgeInsets.all(5),
    this.defaultActiveColor = const Color(0xFF101720),
    this.defaultInactiveColor = Colors.black54,
    this.defaultActiveTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    this.defaultInactiveTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.defaultIconSize = 24.0,
    this.scaleFactor = 1.1,
    this.animationCurve = Curves.easeOutQuad,
    this.animationDuration = const Duration(milliseconds: 300),
    this.showLabel = true,
  });
}
