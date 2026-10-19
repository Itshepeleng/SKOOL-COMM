import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/viewmodels/dashboard_view_model.dart';
import 'package:mobile/views/screens/welcome_screen.dart';

void main() {
  testWidgets('welcome screen offers sign in and account creation', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: WelcomeScreen()));

    expect(find.text('Skool-Comm'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Create Account'), findsOneWidget);
  });

  test('dashboard view model updates filters and selected tab', () {
    final viewModel = DashboardViewModel();
    addTearDown(viewModel.dispose);

    viewModel.selectTab(2);
    viewModel.selectPointFilter(PointFilter.positive);
    viewModel.selectMessageFolder(MessageFolder.archived);

    expect(viewModel.selectedTab, 2);
    expect(viewModel.pointFilter, PointFilter.positive);
    expect(viewModel.messageFolder, MessageFolder.archived);
  });
}
