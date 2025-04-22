import 'package:flutter/material.dart';

class BadgeNavItem {
  final String? text;
  final int? count;
  final Color color;
  final Color textColor;
  final double size;
  final bool hideWhenZero;

  const BadgeNavItem({
    this.text,
    this.count,
    this.color = Colors.red,
    this.textColor = Colors.white,
    this.size = 16,
    this.hideWhenZero = true,
  });
}
