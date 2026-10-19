import 'package:flutter/material.dart';
import '../../viewmodels/dashboard_view_model.dart';
import '../widgets/school_widgets.dart';
import 'behavioral_points_screen.dart';
import 'dashboard_screen.dart';
import 'messages_screen.dart';
import 'simple_tab_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  late final DashboardViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = DashboardViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (context, _) {
        final screen = switch (_viewModel.selectedTab) {
          0 => DashboardScreen(
              onOpenPoints: () => _viewModel.selectTab(1),
              onOpenMessages: _openMessages,
            ),
          1 => BehavioralPointsScreen(viewModel: _viewModel),
          2 => const SimpleTabScreen(
              title: 'Latest News',
              icon: Icons.campaign_outlined,
              message: 'School announcements and updates will appear here.',
            ),
          3 => const SimpleTabScreen(
              title: 'Alerts',
              icon: Icons.notifications_none,
              message: 'Reminders and school alerts will appear here.',
            ),
          _ => const SimpleTabScreen(
              title: 'Profile',
              icon: Icons.person_outline,
              message: 'Your parent and learner profiles will appear here.',
              showSignOut: true,
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
}
