import 'package:custom_bottom_nav_bar/bottom_nav_item.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_test_helpers.dart';

void main() {
  testWidgets('BottomNavItem renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(
        BottomNavItem(
          index: 0,
          currentIndex: 0,
          iconPath: 'icon1.svg',
          label: 'Home',
          onTap: (index) {},
        ),
      ),
    );

    expect(find.text('Home'), findsOneWidget);
    expect(find.byType(SvgPicture), findsOneWidget);
  });

  testWidgets('BottomNavItem calls onTap when pressed',
      (WidgetTester tester) async {
    int tappedIndex = 0;

    await tester.pumpWidget(
      buildTestableWidget(
        BottomNavItem(
          index: 1,
          currentIndex: 0,
          iconPath: 'icon1.svg',
          label: 'Search',
          onTap: (index) => tappedIndex = index,
        ),
      ),
    );

    await tester.tap(find.text('Search'));
    expect(tappedIndex, equals(1));
  });
}
