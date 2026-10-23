import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../widgets/school_widgets.dart';
import 'create_account_screen.dart';
import 'login_screen.dart';
import 'terms_and_conditions_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: SchoolTheme.green, width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        'assets/images/wilgehof_crest.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Connecting School, Parents & Learners',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: SchoolTheme.muted),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Skool-Comm',
                      style: TextStyle(
                        color: SchoolTheme.darkGreen,
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      height: 176,
                      decoration: BoxDecoration(
                        color: SchoolTheme.paleGreen,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Icon(
                        Icons.account_balance_rounded,
                        size: 92,
                        color: SchoolTheme.green,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SchoolPrimaryButton(
                      label: 'Login',
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => const LoginScreen(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: OutlinedButton(
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => const CreateAccountScreen(),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: SchoolTheme.darkGreen,
                          side: const BorderSide(color: SchoolTheme.green),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        child: const Text('Create Account'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => TermsAndConditionsScreen.open(context),
                      child: const Text('Terms & Conditions'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
