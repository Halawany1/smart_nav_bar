import 'package:flutter/material.dart';
import 'package:custom_bottom_nav_bar/custom_bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<NavItemModel> _navItems = [
    NavItemModel(
      iconPath: 'assets/icons/home.svg',
      label: 'Home',
    ),
    NavItemModel(
      iconPath: 'assets/icons/search.svg',
      label: 'Search',
    ),
    NavItemModel(
      iconPath: 'assets/icons/favorites.svg',
      label: 'Favorites',
    ),
    NavItemModel(
      iconPath: 'assets/icons/profile.svg',
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Page $_currentIndex')),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _currentIndex,
          items: _navItems,
          onTap: (index) => setState(() => _currentIndex = index),
          style: BottomNavBarStyle(
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            backgroundColor: Colors.white.withOpacity(0.9),
          ),
        ),
      ),
    );
  }
}