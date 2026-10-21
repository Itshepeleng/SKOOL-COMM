import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../viewmodels/auth_view_model.dart';
import '../../viewmodels/dashboard_view_model.dart';
import '../../viewmodels/learner_view_model.dart';
import '../widgets/school_widgets.dart';
import 'attendance_screen.dart';
import 'behavioral_points_screen.dart';
import 'calendar_screen.dart';
import 'child_profile_screen.dart';
import 'dashboard_screen.dart';
import 'messages_screen.dart';
import 'my_children_screen.dart';
import 'news_screen.dart';
import 'profile_screen.dart';
import 'reminders_screen.dart';
import 'settings_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key, this.initialTab = 0});

  final int initialTab;

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  late final DashboardViewModel _viewModel;
  late final AuthViewModel _authViewModel;
  late final LearnerViewModel _learnerViewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = DashboardViewModel()..selectedTab = widget.initialTab;
    _authViewModel = AuthViewModel(Supabase.instance.client.auth);
    _learnerViewModel = LearnerViewModel(Supabase.instance.client);
  }

  @override
  void dispose() {
    _viewModel.dispose();
    _authViewModel.dispose();
    _learnerViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_viewModel, _authViewModel]),
      builder: (context, _) {
        final screen = switch (_viewModel.selectedTab) {
          0 => DashboardScreen(
            parentName: _authViewModel.dashboardName,
            onOpenPoints: () => _viewModel.selectTab(1),
            onOpenMessages: _openMessages,
            onOpenAttendance: _openAttendance,
            onOpenReminders: () => _viewModel.selectTab(3),
            onOpenSettings: _openSettings,
            onOpenCalendar: _openCalendar,
          ),
          1 => BehavioralPointsScreen(viewModel: _viewModel),
          2 => const NewsScreen(),
          3 => RemindersScreen(onViewCalendar: _openCalendar),
          _ => ProfileScreen(
            viewModel: _authViewModel,
            onOpenSettings: _openSettings,
            onOpenChildren: _openChildren,
            onAddChild: _addChild,
          ),
        };

        return Scaffold(
          body: screen,
          bottomNavigationBar: SchoolBottomNavigation(
            selectedIndex: _viewModel.selectedTab,
            onSelected: _viewModel.selectTab,
          ),
        );
      },
    );
  }

  void _openMessages() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => MessagesScreen(viewModel: _viewModel),
      ),
    );
  }

  void _openAttendance() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => AttendanceScreen(
          studentName: _authViewModel.childFullName.isEmpty
              ? 'Thabo Mokoena'
              : _authViewModel.childFullName,
          grade: _authViewModel.childGrade,
        ),
      ),
    );
  }

  void _openCalendar() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const CalendarScreen()));
  }

  void _openSettings() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => SettingsScreen(authViewModel: _authViewModel),
      ),
    );
  }

  void _openChildren() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => MyChildrenScreen(
          viewModel: _learnerViewModel,
          onOpenAttendance: (child) => _openAttendanceForChild(
            child.fullName,
            '${child.grade} · ${child.className}',
          ),
          onOpenPoints: _openPoints,
          onAddChild: _addChildFromChildren,
          onSelectTab: (index) {
            Navigator.of(context).pop();
            _viewModel.selectTab(index);
          },
        ),
      ),
    );
  }

  void _addChild() {
    final registrationViewModel = _learnerViewModel.copyForRegistration();
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ChildProfileScreen(
          viewModel: registrationViewModel,
          ownsViewModel: true,
        ),
      ),
    );
  }

  void _addChildFromChildren() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ChildProfileScreen(
          viewModel: _learnerViewModel,
          returnToChildren: true,
        ),
      ),
    );
  }

  void _openPoints() {
    Navigator.of(context).popUntil((route) => route.isFirst);
    _viewModel.selectTab(1);
  }

  void _openAttendanceForChild(String studentName, String grade) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) =>
            AttendanceScreen(studentName: studentName, grade: grade),
      ),
    );
  }
}
