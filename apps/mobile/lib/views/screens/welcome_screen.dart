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
      // Remove or comment out the backgroundColor line here
      // backgroundColor: const Color(0xFFF3F8F4), 
      
      body: Container(
        // ✨ MAGIC: A beautiful green gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1B5E20), // Dark Wilgehof Green
              Color(0xFF4CAF50), // Lighter green
              Color(0xFFF3F8F4), // Very pale green
            ],
            stops: [0.0, 0.4, 0.8], 
          ),
        ),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              // ... the rest of your code stays exactly the same!
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      
                      // White glowing badge for the logo
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26, // Darker shadow on green
                              blurRadius: 20,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: const SchoolLogo(),
                      ),
                      
                      const SizedBox(height: 18),
                      
                      // ✨ Changed text to White so it pops on the green background
                      const Text(
                        'Skool-Comm',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 34, // Slightly larger
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Connecting School, Parents & Learners',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70, // Soft white
                          fontSize: 15,
                        ),
                      ),
                      
                      const SizedBox(height: 30),
                      
                      // The school image, floating beautifully
                      Container(
                        width: double.infinity,
                        height: 260, // Adjusted height to fit screen better
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24), // Rounder corners
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26, // Strong shadow for depth
                              blurRadius: 25,
                              offset: Offset(0, 12),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            'assets/images/school_building.jpg',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(
                              Icons.account_balance_rounded,
                              size: 92,
                              color: SchoolTheme.green,
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 35),
                      
                      // The Login Button
                      SchoolPrimaryButton(
                        label: 'Login',
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => const LoginScreen(),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 14),
                      
                      // The Create Account Button
                      SizedBox(
                        width: double.infinity,
                        height: 55, // Made it match the Login button height
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const CreateAccountScreen(),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white, // White background so it stands out
                            foregroundColor: SchoolTheme.darkGreen,
                            side: const BorderSide(color: Colors.white, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26), // Rounded pill shape
                            ),
                            elevation: 2,
                          ),
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // Terms & Conditions
                      TextButton(
                        onPressed: () => TermsAndConditionsScreen.open(context),
                        child: const Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            color: SchoolTheme.darkGreen, // Dark text to read on the pale bottom
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}