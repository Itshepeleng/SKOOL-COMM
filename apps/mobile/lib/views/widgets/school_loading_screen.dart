import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import 'school_widgets.dart';

class SchoolLoadingScreen extends StatelessWidget {
  const SchoolLoadingScreen({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFE7F3EA), Color(0xFFFFF4E6)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SchoolLogo(),
                const SizedBox(height: 32),
                SchoolLoadingIndicator(message: message),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SchoolLoadingIndicator extends StatelessWidget {
  const SchoolLoadingIndicator({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          width: 34,
          height: 34,
          child: CircularProgressIndicator(
            strokeWidth: 3,
            color: SchoolTheme.green,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: SchoolTheme.darkGreen,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
