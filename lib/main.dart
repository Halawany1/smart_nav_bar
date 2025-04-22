import 'package:flutter/material.dart';
import 'package:smart_nav_bar/bottom_nav_bar.dart';
import 'package:smart_nav_bar/models/nav_item_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<NavItemModel> _items = const [
    NavItemModel(iconPath: 'assets/home_icon.svg', label: 'Home'),
    NavItemModel(iconPath: 'assets/request_icon.svg', label: 'Request'),
    NavItemModel(iconPath: 'assets/returns_icon.svg', label: 'Returns'),
    NavItemModel(iconPath: 'assets/profile_icon.svg', label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Nav Bar Demo')),
        body: Center(child: Text('Page ${_currentIndex + 1}')),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _currentIndex,
          items: _items,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}
