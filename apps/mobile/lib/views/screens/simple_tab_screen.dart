import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/school_theme.dart';
import '../widgets/school_widgets.dart';
import 'welcome_screen.dart';

class SimpleTabScreen extends StatelessWidget {
  const SimpleTabScreen({
    required this.title,
    required this.icon,
    required this.message,
    super.key,
    this.showSignOut = false,
  });

  final String title;
  final IconData icon;
  final String message;
  final bool showSignOut;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(title: Text(title)),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, size: 58, color: SchoolTheme.green),
                    const SizedBox(height: 16),
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: SchoolTheme.muted),
                    ),
                    if (showSignOut) ...[
                      const SizedBox(height: 24),
                      SchoolPrimaryButton(
                        label: 'Sign Out',
                        onPressed: () => _signOut(context),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      await Supabase.instance.client.auth.signOut();
      if (!context.mounted) return;
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<void>(builder: (_) => const WelcomeScreen()),
        (_) => false,
      );
    } on AuthException catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.message)),
      );
    } on Exception catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unable to sign out: $error')),
      );
    }
  }
}
