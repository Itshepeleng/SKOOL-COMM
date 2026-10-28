import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import 'create_account_screen.dart';
import 'login_screen.dart';
import 'terms_and_conditions_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const Color _accent = Color(0xFFE8761E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      const SizedBox(height: 32),

                      // Round logo
                      Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: SchoolTheme.green,
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.10),
                              blurRadius: 16,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 135,
                          child: Image.asset(
                            'assets/logos/school_logo.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      const SizedBox(height: 22),

                      const Text(
                        'Skool-Comm',
                        style: TextStyle(
                          color: SchoolTheme.darkGreen,
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Orange accent line
                      Container(
                        width: 56,
                        height: 4,
                        decoration: BoxDecoration(
                          color: _accent,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        'Connecting School,\nParents & Learners',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF555555),
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Wide photo strip
                      Container(
                        width: double.infinity,
                        height: 185,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.12),
                              blurRadius: 14,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),
                        child: ClipRRect(
  borderRadius: BorderRadius.circular(22),
  child: Transform.scale(
    scale: 1.12,
    child: Image.asset(
      'assets/images/school_building.jpg',
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => Container(
        color: SchoolTheme.paleGreen,
        child: const Center(
          child: Icon(Icons.school, size: 70, color: SchoolTheme.green),
        ),
      ),
    ),
  ),
),
                      ),

                      const Spacer(),
                      const SizedBox(height: 28),

                      // Login
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const LoginScreen(),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: SchoolTheme.green,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 14),

                      // Create Account
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const CreateAccountScreen(),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: SchoolTheme.green,
                            side: const BorderSide(
                              color: SchoolTheme.green,
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26),
                            ),
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      TextButton(
                        onPressed: () => TermsAndConditionsScreen.open(context),
                        child: const Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            color: SchoolTheme.green,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}