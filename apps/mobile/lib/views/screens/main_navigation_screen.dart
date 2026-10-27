import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../viewmodels/auth_view_model.dart';
import '../../viewmodels/dashboard_view_model.dart';
import '../../viewmodels/learner_view_model.dart';
import '../../viewmodels/messages_view_model.dart';
import '../../models/learner_profile.dart';
import '../../models/learner_records.dart';
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
  const MainNavigationScreen({
    super.key,
    this.initialTab = 0,
    this.initialChildren = const [],
  });

  final int initialTab;
  final List<LearnerProfile> initialChildren;

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
    final client = Supabase.instance.client;
    _authViewModel = AuthViewModel(client.auth, client: client);
    _learnerViewModel = LearnerViewModel(Supabase.instance.client)
      ..seedRegisteredChildren(widget.initialChildren);
    _authViewModel.loadAvatar();
    // Let the first frame render before the initial Supabase request updates listeners.
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadChildren());
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
      animation: Listenable.merge([
        _viewModel,
        _authViewModel,
        _learnerViewModel,
      ]),
      builder: (context, _) {
        final screen = switch (_viewModel.selectedTab) {
          0 => DashboardScreen(
            parentName: _authViewModel.dashboardName,
            parentAvatarUrl: _authViewModel.avatarUrl,
            onOpenPoints: _openPoints,
            onOpenMessages: _openMessages,
            onOpenAttendance: _openAttendance,
            onOpenReminders: () => _viewModel.selectTab(3),
            onOpenSettings: _openSettings,
            onOpenCalendar: _openCalendar,
          ),
          1 => BehavioralPointsScreen(
            viewModel: _viewModel,
            onBack: () => _selectTab(0),
            children: _learnerViewModel.children,
            selectedChild: _learnerViewModel.selectedChild,
            onSelectChild: _selectChild,
            records:
                _learnerViewModel.behaviouralLearnerId ==
                    _learnerViewModel.selectedLearnerId
                ? _learnerViewModel.behaviouralRecords
                : const [],
            isLoading: _learnerViewModel.isLoadingBehaviour,
            errorMessage: _learnerViewModel.behaviourErrorMessage,
          ),
          2 => NewsScreen(onBack: () => _selectTab(0)),
          3 => RemindersScreen(
            onBack: () => _selectTab(0),
            onViewCalendar: _openCalendar,
            client: Supabase.instance.client,
          ),
          _ => ProfileScreen(
            viewModel: _authViewModel,
            onBack: () => _selectTab(0),
            onOpenSettings: _openSettings,
            onOpenChildren: _openChildren,
            onAddChild: _addChild,
          ),
        };

        return Scaffold(
          body: screen,
          bottomNavigationBar: SchoolBottomNavigation(
            selectedIndex: _viewModel.selectedTab,
            onSelected: _selectTab,
          ),
        );
      },
    );
  }

  void _openMessages() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => MessagesScreen(
          viewModel: MessagesViewModel(Supabase.instance.client),
          onBack: () => Navigator.of(context).maybePop(),
        ),
      ),
    );
  }

  void _openAttendance() {
    final child = _learnerViewModel.selectedChild;
    if (child == null) {
      _openChildren();
      return;
    }
    _openAttendanceForChild(child);
  }

  void _openCalendar() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => CalendarScreen(client: Supabase.instance.client),
      ),
    );
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
          onOpenAttendance: _openAttendanceForChild,
          onOpenPoints: _openPointsForChild,
          onAddChild: _addChildFromChildren,
          onSelectTab: (index) {
            Navigator.of(context).pop();
            _selectTab(index);
          },
        ),
      ),
    );
  }

  void _addChild() {
    // The registration route gets an owned copy so it can be disposed independently.
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

  Future<void> _loadChildren() async {
    if (!_learnerViewModel.hasAuthenticatedUser) return;
    await _learnerViewModel.loadChildren();
    if (!mounted) return;
    if (_viewModel.selectedTab == 1) {
      final learnerId = _learnerViewModel.selectedLearnerId;
      if (learnerId != null) {
        await _learnerViewModel.loadBehaviouralRecords(learnerId);
      }
    }
  }

  void _selectTab(int index) {
    _viewModel.selectTab(index);
    final learnerId = _learnerViewModel.selectedLearnerId;
    if (index == 1 && learnerId != null) {
      _learnerViewModel.loadBehaviouralRecords(learnerId);
    }
  }

  void _selectChild(LearnerProfile child) {
    _learnerViewModel.selectChild(child);
    _viewModel.clearSelectedPoint();
    final learnerId = child.learnerId;
    if (_viewModel.selectedTab == 1 && learnerId != null) {
      _learnerViewModel.loadBehaviouralRecords(learnerId);
    }
  }

  void _openPoints() {
    final learnerId = _learnerViewModel.selectedLearnerId;
    if (learnerId == null) {
      _openChildren();
      return;
    }
    _viewModel.selectTab(1);
    _learnerViewModel.loadBehaviouralRecords(learnerId);
  }

  void _openPointsForChild(LearnerProfile child) {
    _selectChild(child);
    // Close the children screen before switching tabs to avoid stacking navigation routes.
    Navigator.of(context).popUntil((route) => route.isFirst);
    _viewModel.selectTab(1);
    if (child.learnerId != null) {
      _learnerViewModel.loadBehaviouralRecords(child.learnerId!);
    }
  }

  void _openAttendanceForChild(LearnerProfile child) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => AttendanceScreen(
          child: child,
          loadAttendance: _loadAttendanceForChild,
        ),
      ),
    );
  }

  Future<List<LearnerAttendanceRecord>> _loadAttendanceForChild(
    int learnerId,
  ) async {
    final loaded = await _learnerViewModel.loadAttendanceRecords(learnerId);
    if (!loaded || _learnerViewModel.attendanceLearnerId != learnerId) {
      throw StateError(
        _learnerViewModel.attendanceErrorMessage ??
            'Unable to load attendance records.',
      );
    }
    return _learnerViewModel.attendanceRecords;
  }
}
