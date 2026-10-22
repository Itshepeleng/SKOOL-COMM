import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/viewmodels/attendance_view_model.dart';
import 'package:mobile/viewmodels/auth_view_model.dart';
import 'package:mobile/viewmodels/calendar_view_model.dart';
import 'package:mobile/viewmodels/dashboard_view_model.dart';
import 'package:mobile/viewmodels/learner_view_model.dart';
import 'package:mobile/models/learner_profile.dart';
import 'package:mobile/models/learner_records.dart';
import 'package:mobile/models/school_announcement.dart';
import 'package:mobile/models/school_models.dart';
import 'package:mobile/views/screens/behavioral_points_screen.dart';
import 'package:mobile/views/screens/calendar_screen.dart';
import 'package:mobile/views/screens/attendance_screen.dart';
import 'package:mobile/views/screens/child_profile_screen.dart';
import 'package:mobile/views/screens/my_children_screen.dart';
import 'package:mobile/views/screens/news_screen.dart';
import 'package:mobile/views/screens/profile_screen.dart';
import 'package:mobile/views/screens/reminders_screen.dart';
import 'package:mobile/views/screens/terms_and_conditions_screen.dart';
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

  test('learner attendance and behaviour records parse Supabase RPC rows', () {
    final attendance = LearnerAttendanceRecord.fromJson({
      'attendance_date': '2026-10-21',
      'status': 'absent',
    });
    final point = PointRecord.fromJson({
      'pointid': 5,
      'offencecode': 'B2',
      'level': 2,
      'offencename': 'Late for class',
      'points': -10,
      'reason': 'Arrived after the lesson started.',
      'daterecorded': '2026-10-21T08:30:00',
      'teacher_name': 'Ms Nevusa',
      'teacher_initials': 'NN',
    });

    expect(attendance.date, DateTime(2026, 10, 21));
    expect(attendance.status, 'Absent');
    expect(point.pointId, 5);
    expect(point.title, 'Late for class');
    expect(point.detail, 'Level 2 · B2');
    expect(point.teacherName, 'Ms Nevusa');
  });

  test('school calendar event parses admin event and multi-day plan rows', () {
    final event = SchoolEvent.fromJson({
      'id': 12,
      'kind': 'event',
      'title': 'November Assembly',
      'description': 'End-of-year assembly',
      'start_date': '2026-11-12T08:30:00',
      'end_date': '2026-11-12T08:30:00',
      'location': 'School Hall',
    });
    final yearPlan = SchoolEvent.fromJson({
      'id': 13,
      'kind': 'yearplan',
      'title': 'Examinations',
      'description': 'Final examinations',
      'start_date': '2026-11-16T00:00:00',
      'end_date': '2026-11-20T00:00:00',
      'location': '',
    });

    expect(event.date, DateTime(2026, 11, 12, 8, 30));
    expect(event.time, '08:30');
    expect(event.location, 'School Hall');
    expect(yearPlan.endDate, DateTime(2026, 11, 20));
    expect(yearPlan.time, isEmpty);
  });

  test('school announcement parses web-published parent messages', () {
    final announcement = SchoolAnnouncement.fromJson({
      'announcement_id': 31,
      'title': 'November Assembly',
      'content': 'The assembly begins at 08:30.',
      'date_posted': '2026-10-22T08:30:00Z',
      'target_audience': 'All Parents',
    });

    expect(announcement.id, 31);
    expect(announcement.title, 'November Assembly');
    expect(announcement.content, 'The assembly begins at 08:30.');
    expect(announcement.targetAudience, 'All Parents');
  });

  test('calendar includes admin events across their scheduled date range', () {
    final viewModel = CalendarViewModel(initialMonth: DateTime(2026, 11))
      ..events = [
        SchoolEvent.fromJson({
          'id': 13,
          'kind': 'yearplan',
          'title': 'Examinations',
          'description': 'Final examinations',
          'start_date': '2026-11-16T00:00:00',
          'end_date': '2026-11-20T00:00:00',
          'location': '',
        }),
      ];
    addTearDown(viewModel.dispose);

    expect(viewModel.eventsForVisibleMonth, hasLength(1));
    expect(viewModel.hasEventOn(DateTime(2026, 11, 18)), isTrue);
    expect(viewModel.hasEventOn(DateTime(2026, 11, 21)), isFalse);
  });

  test('upcoming events excludes past events and sorts by start date', () {
    final today = DateUtils.dateOnly(DateTime.now());
    final viewModel = CalendarViewModel()
      ..events = [
        SchoolEvent(
          id: 1,
          kind: 'event',
          date: today.subtract(const Duration(days: 4)),
          endDate: today.subtract(const Duration(days: 4)),
          title: 'Past event',
          description: '',
          time: '',
          location: '',
          colorValue: 0,
        ),
        SchoolEvent(
          id: 2,
          kind: 'yearplan',
          date: today.add(const Duration(days: 5)),
          endDate: today.add(const Duration(days: 5)),
          title: 'Later event',
          description: '',
          time: '',
          location: '',
          colorValue: 0,
        ),
        SchoolEvent(
          id: 3,
          kind: 'event',
          date: today.subtract(const Duration(days: 1)),
          endDate: today.add(const Duration(days: 1)),
          title: 'Current multi-day event',
          description: '',
          time: '',
          location: '',
          colorValue: 0,
        ),
        SchoolEvent(
          id: 4,
          kind: 'event',
          date: today.add(const Duration(days: 2)),
          endDate: today.add(const Duration(days: 2)),
          title: 'Soon event',
          description: '',
          time: '',
          location: '',
          colorValue: 0,
        ),
      ];
    addTearDown(viewModel.dispose);

    expect(viewModel.upcomingEvents.map((event) => event.title), [
      'Current multi-day event',
      'Soon event',
      'Later event',
    ]);
  });

  testWidgets('welcome screen offers sign in and account creation', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: WelcomeScreen()));

    expect(find.text('Skool-Comm'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Create Account'), findsOneWidget);
    expect(find.text('Terms & Conditions'), findsOneWidget);

    await tester.tap(find.text('Terms & Conditions'));
    await tester.pumpAndSettle();
    expect(find.byType(TermsAndConditionsScreen), findsOneWidget);
    expect(find.text('1. About these terms'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('10. Applicable law and contact'),
      300,
    );
    expect(find.text('10. Applicable law and contact'), findsOneWidget);
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
            onBack: () {},
            onOpenSettings: () {},
            onOpenChildren: () {},
            onAddChild: () => addChildTapped = true,
          ),
        ),
      ),
    );

    expect(find.byTooltip('Back'), findsOneWidget);
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
    await tester.scrollUntilVisible(find.text('Add Child'), 300);
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
          onOpenPoints: (_) {},
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
          onOpenPoints: (_) {},
          onSelectTab: (_) {},
          onAddChild: () {},
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Ava Mokoena'), findsOneWidget);
    expect(find.text('Grade 3 · B · Term 3, 2026'), findsOneWidget);
  });

  test(
    'registered learner remains selected before the parent signs in',
    () async {
      const child = LearnerProfile(
        learnerId: 17,
        firstName: 'Ava',
        lastName: 'Mokoena',
        grade: 'Grade 3',
        className: 'B',
        relationship: 'Mother',
      );
      final learnerViewModel = LearnerViewModel(
        SupabaseClient(
          'https://example.supabase.co',
          'test-key',
          authOptions: const AuthClientOptions(autoRefreshToken: false),
        ),
      )..seedRegisteredChildren([child]);
      addTearDown(learnerViewModel.dispose);

      final loaded = await learnerViewModel.loadChildren();
      final registrationViewModel = learnerViewModel.copyForRegistration();
      addTearDown(registrationViewModel.dispose);

      expect(loaded, isTrue);
      expect(registrationViewModel.children, [child]);
      expect(registrationViewModel.selectedChild, child);
    },
  );

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
          onOpenPoints: (_) {},
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
    final learnerViewModel = LearnerViewModel(
      SupabaseClient(
        'https://example.supabase.co',
        'test-key',
        authOptions: const AuthClientOptions(autoRefreshToken: false),
      ),
    );
    addTearDown(learnerViewModel.dispose);
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
                    builder: (_) => AttendanceScreen(
                      child: const LearnerProfile(
                        learnerId: 17,
                        firstName: 'Ava',
                        lastName: 'Mokoena',
                        grade: 'Grade 3',
                        className: 'B',
                        relationship: 'Mother',
                      ),
                      loadAttendance: (_) async => [],
                    ),
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

    expect(find.text('Attendance Summary'), findsOneWidget);
    expect(find.text('No attendance records yet.'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('attendance loading stops and offers retry after a failure', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: AttendanceScreen(
          child: const LearnerProfile(
            learnerId: 17,
            firstName: 'Ava',
            lastName: 'Mokoena',
            grade: 'Grade 3',
            className: 'B',
            relationship: 'Mother',
          ),
          loadAttendance: (_) async => throw StateError('backend unavailable'),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(CircularProgressIndicator), findsNothing);
    expect(
      find.text(
        'Unable to load attendance records: Bad state: backend unavailable',
      ),
      findsOneWidget,
    );
    expect(find.text('Retry'), findsOneWidget);
  });

  test('weekly attendance report is generated as a PDF', () async {
    final viewModel = AttendanceViewModel(
      studentName: 'Thabo Mokoena',
      grade: 'Grade 5B',
      now: DateTime(2026, 10, 21),
    );
    viewModel.setAttendanceRecords([
      LearnerAttendanceRecord(date: DateTime(2026, 10, 19), status: 'Present'),
      LearnerAttendanceRecord(date: DateTime(2026, 10, 20), status: 'Present'),
      LearnerAttendanceRecord(date: DateTime(2026, 10, 21), status: 'Absent'),
      LearnerAttendanceRecord(date: DateTime(2026, 10, 22), status: 'Present'),
      LearnerAttendanceRecord(date: DateTime(2026, 10, 23), status: 'Present'),
    ]);
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
        home: Scaffold(
          body: BehavioralPointsScreen(
            viewModel: viewModel,
            onBack: () {},
            children: const [
              LearnerProfile(
                learnerId: 17,
                firstName: 'Ava',
                lastName: 'Mokoena',
                grade: 'Grade 3',
                className: 'B',
                relationship: 'Mother',
              ),
            ],
            selectedChild: const LearnerProfile(
              learnerId: 17,
              firstName: 'Ava',
              lastName: 'Mokoena',
              grade: 'Grade 3',
              className: 'B',
              relationship: 'Mother',
            ),
            onSelectChild: (_) {},
            records: [
              PointRecord(
                date: DateTime.now(),
                title: 'Disrupting class / not following instructions',
                detail: 'Level 2 · Infringement',
                points: -10,
                teacherInitials: 'NP',
                teacherName: 'Ms N. P. Nevusa',
                teacherNote: 'Repeatedly talking while teacher was explaining.',
              ),
            ],
            isLoading: false,
            errorMessage: null,
          ),
        ),
      ),
    );

    expect(find.text('Weekly Summary'), findsOneWidget);
    expect(find.text('1 point record this week.'), findsOneWidget);

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
    expect(find.byTooltip('Back to Home'), findsOneWidget);
  });

  testWidgets('year plan calendar changes visible month', (tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CalendarScreen(initialMonth: DateTime(2026, 9))),
    );

    expect(find.text('September 2026'), findsOneWidget);
    await tester.tap(find.byTooltip('Next month'));
    await tester.pumpAndSettle();
    expect(find.text('October 2026'), findsOneWidget);
  });

  testWidgets('news page has a back action', (tester) async {
    var wentBack = false;
    await tester.pumpWidget(
      MaterialApp(home: NewsScreen(onBack: () => wentBack = true)),
    );

    expect(find.byTooltip('Back'), findsOneWidget);
    await tester.tap(find.byTooltip('Back'));
    expect(wentBack, isTrue);
  });

  testWidgets('reminders calendar action opens the school year plan', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: RemindersScreen(
              onBack: () {},
              onViewCalendar: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (_) =>
                        CalendarScreen(initialMonth: DateTime(2026, 9)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );

    await tester.ensureVisible(find.text('View school calendar'));

    expect(find.byTooltip('Back'), findsOneWidget);
    await tester.tap(find.text('View school calendar'));
    await tester.pumpAndSettle();

    expect(find.text('Year Plan'), findsOneWidget);
    expect(find.text('September 2026'), findsOneWidget);
  });
}
