import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A stateless widget that represents a single item in a custom navigation bar.
class SmartNavBarItem extends StatelessWidget {
  /// The index of this item in the navigation bar.
  final int index;

  /// The currently selected index from the parent navigation bar.
  final int currentIndex;

  /// The path to the SVG icon used for this item.
  final String iconPath;

  /// The label shown below the icon.
  final String label;

  /// Callback triggered when this item is tapped.
  final ValueChanged<int> onTap;

  /// The color of the icon and label when the item is active.
  final Color activeColor;

  /// The color of the icon and label when the item is inactive.
  final Color inactiveColor;

  /// The text style used when the item is active.
  final TextStyle activeTextStyle;

  /// The text style used when the item is inactive.
  final TextStyle inactiveTextStyle;

  /// The size of the icon.
  final double iconSize;

  /// The scale factor applied to the icon and text when the item is active.
  final double scaleFactor;

  /// Creates a visual representation of a navigation item that includes an icon and a label,
  /// and visually responds to selection by scaling and color changes.
  const SmartNavBarItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.label,
    required this.onTap,
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

  @override
  Widget build(BuildContext context) {
    final isActive = index == currentIndex;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onTap(index),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 50),
        tween: Tween(begin: 1.0, end: isActive ? scaleFactor : 1.0),
        builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                iconPath,
                colorFilter: ColorFilter.mode(
                  isActive ? activeColor : inactiveColor,
                  BlendMode.srcIn,
                ),
                width: iconSize,
                height: iconSize,
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: isActive ? activeTextStyle : inactiveTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
