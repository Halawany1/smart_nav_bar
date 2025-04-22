import 'package:flutter/material.dart';

class BottomNavBarStyle {
  final Color backgroundColor;
  final Color borderColor;
  final double borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Color activeColor;
  final Color inactiveColor;
  final TextStyle activeTextStyle;
  final TextStyle inactiveTextStyle;
  final double iconSize;
  final double scaleFactor;

  const BottomNavBarStyle({
    this.backgroundColor = Colors.white,
    this.borderColor = const Color(0xFFDCDCDC),
    this.borderRadius = 20.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.padding = const EdgeInsets.all(5),
    this.activeColor = const Color(0xFF101720),
    this.inactiveColor = Colors.black,
    this.activeTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xFF101720),
    ),
    this.inactiveTextStyle = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    this.iconSize = 24.0,
    this.scaleFactor = 1.1,
  });
}