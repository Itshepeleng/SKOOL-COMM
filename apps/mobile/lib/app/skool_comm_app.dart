import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

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
          : const MainNavigationScreen(),
    );
  }
}
