import 'package:flutter/material.dart';
import 'package:smart_nav_bar/models/nav_item.dart';
import 'package:smart_nav_bar/models/nav_style.dart';
import 'package:smart_nav_bar/smart_bottom_nav.dart';

void main() => runApp(const SmartBottomNavExample());

class SmartBottomNavExample extends StatefulWidget {
  const SmartBottomNavExample({super.key});

  @override
  State<SmartBottomNavExample> createState() => _SmartBottomNavExampletate();
}

class _SmartBottomNavExampletate extends State<SmartBottomNavExample> {
  int _currentIndex = 0;

  final List<SmartNavItem> _items = const [
    SmartNavItem(iconPath: 'assets/home_icon.svg', label: 'Home'),
    SmartNavItem(iconPath: 'assets/request_icon.svg', label: 'Request'),
    SmartNavItem(iconPath: 'assets/returns_icon.svg', label: 'Returns'),
    SmartNavItem(
      iconPath: 'assets/profile_icon.svg',
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Nav Bar Demo')),
        body: Center(child: Text('Page ${_currentIndex + 1}')),
        bottomNavigationBar: SmartBottomNav(
          currentIndex: _currentIndex,
          items: _items,
          style: SmartNavStyle.colorfulStyle,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}
