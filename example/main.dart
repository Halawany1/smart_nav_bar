import 'package:flutter/material.dart';
import 'package:smart_nav_bar/models/badge.dart';
import 'package:smart_nav_bar/smart_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Nav Bar Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const NavBarExample(),
    );
  }
}

class NavBarExample extends StatefulWidget {
  const NavBarExample({super.key});

  @override
  State<NavBarExample> createState() => _NavBarExampleState();
}

class _NavBarExampleState extends State<NavBarExample> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  final List<SmartNavItem> _items = const [
    SmartNavItem(
      iconPath: 'assets/home.svg',
      label: 'Home',
      badge: BadgeNavItem(count: 3),
      screen: Center(child: Text('Home Screen')),
    ),
    SmartNavItem(
      iconPath: 'assets/search.svg',
      label: 'Search',
      screen: Center(child: Text('Search Screen')),
    ),
    SmartNavItem(
      iconPath: 'assets/profile.svg',
      label: 'Profile',
      badge: BadgeNavItem(text: '!'),
      screen: Center(child: Text('Profile Screen')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartBottomNav(
        currentIndex: _currentIndex,
        items: _items,
        onTap: (index) => setState(() => _currentIndex = index),
        withScreens: true,
        pageController: _controller,
      ),
    );
  }
}
