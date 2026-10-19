import 'package:flutter/material.dart';

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
      home: const WelcomeScreen(),
    );
  }
}
