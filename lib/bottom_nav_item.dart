import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final String label;
  final ValueChanged<int> onTap;
  final Color activeColor;
  final Color inactiveColor;
  final TextStyle activeTextStyle;
  final TextStyle inactiveTextStyle;
  final double iconSize;
  final double scaleFactor;

  const BottomNavItem({
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