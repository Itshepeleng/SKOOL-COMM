import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/viewmodels/attendance_view_model.dart';
import 'package:mobile/viewmodels/auth_view_model.dart';
import 'package:mobile/viewmodels/dashboard_view_model.dart';
import 'package:mobile/viewmodels/learner_view_model.dart';
import 'package:mobile/models/learner_profile.dart';
import 'package:mobile/views/screens/behavioral_points_screen.dart';
import 'package:mobile/views/screens/calendar_screen.dart';
import 'package:mobile/views/screens/attendance_screen.dart';
import 'package:mobile/views/screens/child_profile_screen.dart';
import 'package:mobile/views/screens/my_children_screen.dart';
import 'package:mobile/views/screens/profile_screen.dart';
import 'package:mobile/views/screens/reminders_screen.dart';
import 'package:mobile/views/screens/welcome_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  test('learner profile parses ERD column names and casing', () {
    final learner = LearnerProfile.fromJson({
      'LearnerID': 17,
      'FirstName': 'Ava',
      'LastName': 'Mokoena',
      'Grade': 3,
      'Class': 'B',
      'Relationship': 'Mother',
    });

    expect(learner.learnerId, 17);
    expect(learner.fullName, 'Ava Mokoena');
    expect(learner.grade, '3');
    expect(learner.className, 'B');
    expect(learner.relationship, 'Mother');
  });

  testWidgets('welcome screen offers sign in and account creation', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: WelcomeScreen()));

    expect(find.text('Skool-Comm'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Create Account'), findsOneWidget);
  });

  testWidgets('profile editor offers all guardian relationships', (
    tester,
  ) async {
    var addChildTapped = false;
    final authViewModel = AuthViewModel(
      SupabaseClient(
        'https://example.supabase.co',
        'test-key',
        authOptions: const AuthClientOptions(autoRefreshToken: false),
      ).auth,
    );
    addTearDown(authViewModel.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProfileScreen(
            viewModel: authViewModel,
            onOpenSettings: () {},
            onOpenChildren: () {},
            onAddChild: () => addChildTapped = true,
          ),
        ),
      ),
    );

    await tester.tap(find.text('Edit Contact Information'));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(DropdownButtonFormField<String>).first);
    await tester.pumpAndSettle();

    for (final relationship in AuthViewModel.guardianRelationships) {
      expect(find.text(relationship), findsWidgets);
    }
    await tester.tap(find.text('Mother').last);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Edit Contact Information'));
    await tester.pumpAndSettle();
    expect(find.text('Edit Information'), findsOneWidget);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(find.text('Add Child'), findsOneWidget);
    await tester.tap(find.text('Add Child'));
    expect(addChildTapped, isTrue);
  });

  testWidgets('my children screen shows guidance and pre-login empty state', (
    tester,
  ) async {
    final learnerViewModel = LearnerViewModel(
      SupabaseClient(
        'https://example.supabase.co',
        'test-key',
        authOptions: const AuthClientOptions(autoRefreshToken: false),
      ),
    );
    addTearDown(learnerViewModel.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: MyChildrenScreen(
          viewModel: learnerViewModel,
          onOpenAttendance: (_) {},
          onOpenPoints: () {},
          onSelectTab: (_) {},
          onAddChild: () {},
        ),
      ),
    );

    expect(find.text('My Children'), findsOneWidget);
    expect(
      find.text('Here are your children linked to your account.'),
      findsOneWidget,
    );
    await tester.pumpAndSettle();
    expect(
      find.text('No learner profiles are linked to this account yet.'),
      findsOneWidget,
    );
  });

  testWidgets('my children screen displays a locally registered learner', (
    tester,
  ) async {
    final learnerViewModel =
        LearnerViewModel(
            SupabaseClient(
              'https://example.supabase.co',
              'test-key',
              authOptions: const AuthClientOptions(autoRefreshToken: false),
            ),
          )
          ..children = [
            const LearnerProfile(
              learnerId: null,
              firstName: 'Ava',
              lastName: 'Mokoena',
              grade: 'Grade 3',
              className: 'B',
              relationship: 'Mother',
            ),
          ];
    addTearDown(learnerViewModel.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: MyChildrenScreen(
          viewModel: learnerViewModel,
          onOpenAttendance: (_) {},
          onOpenPoints: () {},
          onSelectTab: (_) {},
          onAddChild: () {},
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Ava Mokoena'), findsOneWidget);
    expect(find.text('Grade 3 · B · Term 3, 2026'), findsOneWidget);
  });

  testWidgets('my children navigation and add child actions are wired', (
    tester,
  ) async {
    final learnerViewModel = LearnerViewModel(
      SupabaseClient(
        'https://example.supabase.co',
        'test-key',
        authOptions: const AuthClientOptions(autoRefreshToken: false),
      ),
    );
    addTearDown(learnerViewModel.dispose);
    var selectedTab = -1;
    var addChildTapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: MyChildrenScreen(
          viewModel: learnerViewModel,
          onOpenAttendance: (_) {},
          onOpenPoints: () {},
          onSelectTab: (index) => selectedTab = index,
          onAddChild: () => addChildTapped = true,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Add Child'));
    expect(addChildTapped, isTrue);
    await tester.tap(find.text('Home'));
    expect(selectedTab, 0);
    await tester.tap(find.text('Points'));
    expect(selectedTab, 1);
    await tester.tap(find.text('News'));
    expect(selectedTab, 2);
    await tester.tap(find.text('Alerts'));
    expect(selectedTab, 3);
    await tester.tap(find.text('Profile'));
    expect(selectedTab, 4);
  });

  testWidgets('child profile form collects learner registration fields', (
    tester,
  ) async {
    final learnerViewModel = LearnerViewModel(
      SupabaseClient(
        'https://example.supabase.co',
        'test-key',
        authOptions: const AuthClientOptions(autoRefreshToken: false),
      ),
    );
    addTearDown(learnerViewModel.dispose);

    await tester.pumpWidget(
      MaterialApp(home: ChildProfileScreen(viewModel: learnerViewModel)),
    );

    expect(find.text('Create Child Profile'), findsOneWidget);
    expect(find.text('First name'), findsOneWidget);
    expect(find.text('Last name'), findsOneWidget);
    expect(find.text('Grade'), findsOneWidget);
    expect(find.text('Class'), findsOneWidget);
    expect(find.text('Date of birth'), findsOneWidget);
    expect(find.text('ID number'), findsOneWidget);
    expect(find.text('Relationship to learner'), findsOneWidget);
  });

  testWidgets('attendance screen fits a narrow mobile viewport', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(280, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const AttendanceScreen(),
                  ),
                ),
                child: const Text('Open attendance'),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open attendance'));
    await tester.pumpAndSettle();

    expect(find.text('Term 3 Summary'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  test('weekly attendance report is generated as a PDF', () async {
    final viewModel = AttendanceViewModel(
      studentName: 'Thabo Mokoena',
      grade: 'Grade 5B',
      now: DateTime(2026, 10, 21),
    );
    addTearDown(viewModel.dispose);

    final pdfBytes = await viewModel.generateWeeklySummaryPdf();

    expect(viewModel.weeklyAttendance, hasLength(5));
    expect(viewModel.presentDays, 4);
    expect(viewModel.absentDays, 1);
    expect(String.fromCharCodes(pdfBytes.take(4)), '%PDF');
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

  testWidgets('point record opens its details and returns to the list', (
    tester,
  ) async {
    final viewModel = DashboardViewModel();
    addTearDown(viewModel.dispose);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: BehavioralPointsScreen(viewModel: viewModel)),
      ),
    );

    expect(find.text('Weekly Summary'), findsOneWidget);
    expect(find.text('No points recorded this week.'), findsOneWidget);

    await tester.tap(
      find.text('Disrupting class / not following instructions'),
    );
    await tester.pumpAndSettle();

    expect(find.text('Points Details'), findsOneWidget);
    expect(
      find.text("Repeatedly talking while teacher was explaining."),
      findsOneWidget,
    );
    expect(find.text('Ms N. P. Nevusa'), findsOneWidget);

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();
    expect(find.text('Behavioural points'), findsOneWidget);
  });

  testWidgets('year plan calendar changes visible month', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CalendarScreen()));

    expect(find.text('September 2026'), findsOneWidget);
    await tester.tap(find.byTooltip('Next month'));
    await tester.pumpAndSettle();
    expect(find.text('October 2026'), findsOneWidget);
  });

  testWidgets('reminders calendar action opens the school year plan', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: RemindersScreen(
              onViewCalendar: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) => const CalendarScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );

    await tester.ensureVisible(find.text('View school calendar'));
    await tester.tap(find.text('View school calendar'));
    await tester.pumpAndSettle();

    expect(find.text('Year Plan'), findsOneWidget);
    expect(find.text('September 2026'), findsOneWidget);
  });
}
