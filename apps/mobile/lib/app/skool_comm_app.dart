import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../viewmodels/learner_view_model.dart';
import '../views/screens/child_profile_screen.dart';
import '../views/screens/main_navigation_screen.dart';
import '../views/screens/welcome_screen.dart';
import 'school_theme.dart';

class SkoolCommApp extends StatelessWidget {
  const SkoolCommApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skool-Comm',
      debugShowCheckedModeBanner: false,
      theme: SchoolTheme.light,
      home: Supabase.instance.client.auth.currentSession == null
          ? const WelcomeScreen()
          : const _AuthenticatedStartScreen(),
    );
  }
}

class _AuthenticatedStartScreen extends StatefulWidget {
  const _AuthenticatedStartScreen();

  @override
  State<_AuthenticatedStartScreen> createState() =>
      _AuthenticatedStartScreenState();
}

class _AuthenticatedStartScreenState extends State<_AuthenticatedStartScreen> {
  late final LearnerViewModel _learnerViewModel;

  @override
  void initState() {
    super.initState();
    _learnerViewModel = LearnerViewModel(Supabase.instance.client);
    _checkLinkedLearners();
  }

  @override
  void dispose() {
    _learnerViewModel.dispose();
    super.dispose();
  }

  Future<void> _checkLinkedLearners() async {
    final loaded = await _learnerViewModel.loadChildren();
    if (!mounted || !loaded) return;
    final destination = _learnerViewModel.children.isEmpty
        ? const ChildProfileScreen()
        : const MainNavigationScreen();
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute<void>(builder: (_) => destination));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _learnerViewModel,
      builder: (context, _) => Scaffold(
        body: Center(
          child: _learnerViewModel.errorMessage == null
              ? const CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _learnerViewModel.errorMessage!,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      FilledButton(
                        onPressed: _checkLinkedLearners,
                        child: const Text('Try again'),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
