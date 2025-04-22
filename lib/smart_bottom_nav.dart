import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_nav_bar/models/badge.dart';
import 'package:smart_nav_bar/smart_nav_bar.dart';

class SmartBottomNav extends StatelessWidget {
  final int currentIndex;
  final List<SmartNavItem> items;
  final ValueChanged<int> onTap;
  final SmartNavStyle style;
  final bool withScreens;
  final PageController? pageController;

  const SmartBottomNav({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.style = const SmartNavStyle(),
    this.withScreens = false,
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (withScreens && pageController != null)
          Expanded(
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children:
                  items.map((item) => item.screen ?? Container()).toList(),
            ),
          ),
        _buildBottomNavBar(),
      ],
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      margin: style.margin,
      padding: style.padding,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        border: style.borderColor != null
            ? Border.all(color: style.borderColor!)
            : null,
        borderRadius: BorderRadius.circular(style.borderRadius),
        boxShadow: [
          if (style.borderColor == null)
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: items
            .asMap()
            .entries
            .map((entry) => _buildNavItem(entry.key, entry.value))
            .toList(),
      ),
    );
  }

  Widget _buildNavItem(int index, SmartNavItem item) {
    final isActive = index == currentIndex;
    final activeColor = item.activeColor ?? style.defaultActiveColor;
    final inactiveColor = item.inactiveColor ?? style.defaultInactiveColor;
    final iconSize = item.iconSize ?? style.defaultIconSize;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
        if (withScreens && pageController != null) {
          pageController!.animateToPage(
            index,
            duration: style.animationDuration,
            curve: style.animationCurve,
          );
        }
      },
      child: TweenAnimationBuilder<double>(
        duration: style.animationDuration,
        curve: style.animationCurve,
        tween: Tween(begin: 1.0, end: isActive ? style.scaleFactor : 1.0),
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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    item.iconPath,
                    colorFilter: ColorFilter.mode(
                      isActive ? activeColor : inactiveColor,
                      BlendMode.srcIn,
                    ),
                    width: iconSize,
                    height: iconSize,
                  ),
                  if (item.badge != null && _shouldShowBadge(item.badge!))
                    Positioned(
                      right: -4,
                      top: -4,
                      child: Container(
                        width: item.badge!.size,
                        height: item.badge!.size,
                        decoration: BoxDecoration(
                          color: item.badge!.color,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            item.badge!.text ??
                                item.badge!.count?.toString() ??
                                '',
                            style: TextStyle(
                              color: item.badge!.textColor,
                              fontSize: item.badge!.size * 0.6,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              if (style.showLabel) ...[
                const SizedBox(height: 4),
                Text(
                  item.label,
                  style: (isActive
                      ? style.defaultActiveTextStyle.copyWith(
                          color: activeColor,
                        )
                      : style.defaultInactiveTextStyle.copyWith(
                          color: inactiveColor,
                        )),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  bool _shouldShowBadge(BadgeNavItem badge) {
    if (badge.hideWhenZero && badge.count == 0) return false;
    if (badge.text == null && badge.count == null) return false;
    return true;
  }
}
