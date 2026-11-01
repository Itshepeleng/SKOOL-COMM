import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/views/screens/calendar_screen.dart';

void main() {
  testWidgets('calendar shows and opens school events', (tester) async {
    var selectedTab = -1;
    await tester.pumpWidget(
      MaterialApp(
        home: CalendarScreen(
          initialMonth: DateTime(2026, 9),
          onSelectTab: (index) => selectedTab = index,
        ),
      ),
    );

    expect(find.text('School Calendar'), findsOneWidget);
    expect(find.text('September 2026'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Reminders'), findsOneWidget);

    await tester.drag(
      find.byType(SingleChildScrollView),
      const Offset(0, -250),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('25'));
    await tester.pumpAndSettle();

    expect(find.text('Parent-Teacher Meeting'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Home'));
    expect(selectedTab, 0);
  });
}
