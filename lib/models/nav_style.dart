import 'package:flutter/material.dart';

class SmartNavStyle {
  final Color backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color defaultActiveColor;
  final Color defaultInactiveColor;
  final TextStyle defaultActiveTextStyle;
  final TextStyle defaultInactiveTextStyle;
  final double defaultIconSize;
  final double scaleFactor;
  final Curve animationCurve;
  final Duration animationDuration;
  final bool showLabel;

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
    MaterialColor activeColor = Colors.blue,
  });
}
