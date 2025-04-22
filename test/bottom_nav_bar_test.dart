import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_nav_bar/smart_bottom_nav.dart';
import 'package:smart_nav_bar/smart_bottom_nav_item.dart';
import 'package:smart_nav_bar/models/nav_style.dart';
import 'widget_test_helpers.dart';

void main() {
  testWidgets('CustomBottomNavBar renders correct number of items',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(
        SmartBottomNav(
          currentIndex: 0,
          items: mockNavItems,
          onTap: (index) {},
        ),
      ),
    );

    expect(find.byType(SmartNavBarItem), findsNWidgets(mockNavItems.length));
  });

  testWidgets('CustomBottomNavBar applies correct styling',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(
        SmartBottomNav(
          currentIndex: 0,
          items: mockNavItems,
          onTap: (index) {},
          style: const SmartNavStyle(),
        ),
      ),
    );

    final container = tester.widget<Container>(find.byType(Container).first);
    expect(container.decoration, isA<BoxDecoration>());
  });
}
