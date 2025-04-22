import 'package:custom_bottom_nav_bar/bottom_nav_item.dart';
import 'package:custom_bottom_nav_bar/models/style_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_bottom_nav_bar/bottom_nav_bar.dart';
import 'widget_test_helpers.dart';

void main() {
  testWidgets('CustomBottomNavBar renders correct number of items',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(
        CustomBottomNavBar(
          currentIndex: 0,
          items: mockNavItems,
          onTap: (index) {},
        ),
      ),
    );

    expect(find.byType(BottomNavItem), findsNWidgets(mockNavItems.length));
  });

  testWidgets('CustomBottomNavBar applies correct styling',
      (WidgetTester tester) async {
    const testColor = Colors.red;

    await tester.pumpWidget(
      buildTestableWidget(
        CustomBottomNavBar(
          currentIndex: 0,
          items: mockNavItems,
          onTap: (index) {},
          style: const BottomNavBarStyle(activeColor: testColor),
        ),
      ),
    );

    final container = tester.widget<Container>(find.byType(Container).first);
    expect(container.decoration, isA<BoxDecoration>());
  });
}
