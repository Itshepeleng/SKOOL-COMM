import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/auth_view_model.dart';
import '../../viewmodels/settings_view_model.dart';
import 'welcome_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({required this.authViewModel, super.key});

  final AuthViewModel authViewModel;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final SettingsViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = SettingsViewModel();
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
      builder: (context, _) => Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          tooltip: 'Back',
          onPressed: () => Navigator.of(context).maybePop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SettingsAction(
            title: 'Change Password',
            onTap: _changePassword,
          ),
          _SettingsAction(
            title: 'Language',
            trailing: 'English',
            onTap: () => _showNotice('Language options'),
          ),
          _SettingsAction(
            title: 'Help & Support',
            onTap: () => _showNotice('Contact the school office for support.'),
          ),
          _SettingsToggle(
            title: 'Push Notifications',
            value: _viewModel.pushNotificationsEnabled,
            onChanged: _viewModel.setPushNotifications,
          ),
          _SettingsToggle(
            title: 'Email Notifications',
            value: _viewModel.emailNotificationsEnabled,
            onChanged: _viewModel.setEmailNotifications,
          ),
          const SizedBox(height: 24),
          OutlinedButton(
            onPressed: _signOut,
            style: OutlinedButton.styleFrom(
              foregroundColor: SchoolTheme.orange,
              side: const BorderSide(color: SchoolTheme.orange),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            ),
            child: const Text('Log Out'),
          ),
          const SizedBox(height: 10),
          const Text(
            'Notification preferences are stored for this session only.',
            style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
          ),
        ],
      ),
      ),
    );
  }

  Future<void> _changePassword() async {
    final controller = TextEditingController();
    final password = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Change Password'),
        content: TextField(
          controller: controller,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'New password',
            helperText: 'Use at least 8 characters',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: const Text('Update'),
          ),
        ],
      ),
    );
    final newPassword = password?.trim();
    if (newPassword == null) {
      controller.dispose();
      return;
    }
    if (newPassword.length < 8) {
      controller.dispose();
      _showNotice('Password must be at least 8 characters.');
      return;
    }

    final updated = await widget.authViewModel.changePassword(newPassword);
    controller.dispose();
    if (!mounted) return;
    _showNotice(
      updated
          ? widget.authViewModel.statusMessage ?? 'Password updated.'
          : widget.authViewModel.errorMessage ?? 'Unable to update password.',
    );
  }

  Future<void> _signOut() async {
    final signedOut = await widget.authViewModel.signOut();
    if (!mounted) return;
    if (signedOut) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<void>(builder: (_) => const WelcomeScreen()),
        (_) => false,
      );
    } else {
      _showNotice(
        widget.authViewModel.errorMessage ?? 'Unable to sign out.',
      );
    }
  }

  void _showNotice(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}

class _SettingsAction extends StatelessWidget {
  const _SettingsAction({
    required this.title,
    required this.onTap,
    this.trailing,
  });

  final String title;
  final String? trailing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xFFE2E7E3)),
        borderRadius: BorderRadius.circular(9),
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (trailing != null)
              Text(
                trailing!,
                style: const TextStyle(color: SchoolTheme.muted, fontSize: 12),
              ),
            const SizedBox(width: 5),
            const Icon(Icons.chevron_right, size: 18),
          ],
        ),
        onTap: onTap,
      ),
    );
  }
}

class _SettingsToggle extends StatelessWidget {
  const _SettingsToggle({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xFFE2E7E3)),
        borderRadius: BorderRadius.circular(9),
      ),
      child: SwitchListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        value: value,
        onChanged: onChanged,
        activeThumbColor: SchoolTheme.green,
      ),
    );
  }
}
