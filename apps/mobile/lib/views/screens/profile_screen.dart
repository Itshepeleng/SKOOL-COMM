import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/auth_view_model.dart';
import 'welcome_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    required this.viewModel,
    required this.onOpenSettings,
    required this.onOpenChildren,
    required this.onAddChild,
    super.key,
  });

  final AuthViewModel viewModel;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenChildren;
  final VoidCallback onAddChild;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, _) {
        final user = viewModel.currentUser;
        final metadata = user?.userMetadata ?? const <String, dynamic>{};
        final name = viewModel.fullName;
        final phone = viewModel.phone;
        final email = user?.email ?? 'Not available';
        final guardianRelationship = viewModel.guardianRelationship;
        final childName = metadata['child_name'] as String?;
        final childSurname = metadata['child_surname'] as String?;
        final childLabel = [
          childName,
          childSurname,
        ].whereType<String>().where((value) => value.isNotEmpty).join(' ');

        return SafeArea(
          child: Column(
            children: [
              AppBar(
                title: const Text('Profile'),
                actions: [
                  IconButton(
                    tooltip: 'Settings',
                    onPressed: onOpenSettings,
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    const CircleAvatar(
                      radius: 42,
                      backgroundColor: SchoolTheme.paleGreen,
                      child: Icon(
                        Icons.person,
                        size: 48,
                        color: SchoolTheme.green,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      guardianRelationship,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: SchoolTheme.muted),
                    ),
                    const SizedBox(height: 24),
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFFE2E7E3)),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Contact Information',
                              style: TextStyle(
                                color: SchoolTheme.darkGreen,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 16),
                            _ContactRow(
                              icon: Icons.phone_outlined,
                              label: 'Phone Number',
                              value: phone,
                            ),
                            const SizedBox(height: 13),
                            _ContactRow(
                              icon: Icons.mail_outline,
                              label: 'Email Address',
                              value: email,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: () => _editContact(
                        context,
                        name,
                        phone,
                        email,
                        viewModel.guardianTitle,
                        guardianRelationship,
                      ),
                      icon: const Icon(Icons.edit_outlined),
                      label: const Text('Edit Contact Information'),
                    ),
                    const SizedBox(height: 14),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: onAddChild,
                        icon: const Icon(Icons.person_add_alt_1),
                        label: const Text('Add Child'),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Card(
                      color: SchoolTheme.paleGreen,
                      elevation: 0,
                      child: ListTile(
                        leading: const Icon(
                          Icons.shield_outlined,
                          color: SchoolTheme.green,
                        ),
                        title: const Text(
                          'My Children',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          childLabel.isEmpty
                              ? 'View and manage children linked to your account.'
                              : childLabel,
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: onOpenChildren,
                      ),
                    ),
                    const SizedBox(height: 22),
                    OutlinedButton.icon(
                      onPressed: () => _signOut(context),
                      icon: const Icon(Icons.logout),
                      label: const Text('Log Out'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: SchoolTheme.orange,
                        side: const BorderSide(color: SchoolTheme.orange),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _editContact(
    BuildContext context,
    String name,
    String phone,
    String email,
    String guardianTitle,
    String guardianRelationship,
  ) async {
    final result = await showDialog<(String, String, String, String, String)>(
      context: context,
      builder: (_) => _EditContactDialog(
        name: name,
        phone: phone,
        email: email,
        guardianTitle: guardianTitle,
        guardianRelationship: guardianRelationship,
      ),
    );
    if (result == null) return;

    final updated = await viewModel.updateContact(
      fullName: result.$1,
      phone: result.$2,
      email: result.$3,
      guardianTitle: result.$4,
      guardianRelationship: result.$5,
    );
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          updated
              ? viewModel.statusMessage ?? 'Information updated.'
              : viewModel.errorMessage ??
                    'Unable to update contact information.',
        ),
      ),
    );
  }

  Future<void> _signOut(BuildContext context) async {
    final signedOut = await viewModel.signOut();
    if (!context.mounted) return;
    if (signedOut) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<void>(builder: (_) => const WelcomeScreen()),
        (_) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(viewModel.errorMessage ?? 'Unable to sign out.'),
        ),
      );
    }
  }
}

class _EditContactDialog extends StatefulWidget {
  const _EditContactDialog({
    required this.name,
    required this.phone,
    required this.email,
    required this.guardianTitle,
    required this.guardianRelationship,
  });

  final String name;
  final String phone;
  final String email;
  final String guardianTitle;
  final String guardianRelationship;

  @override
  State<_EditContactDialog> createState() => _EditContactDialogState();
}

class _EditContactDialogState extends State<_EditContactDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _emailController;
  late String _selectedTitle;
  late String _selectedRelationship;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _phoneController = TextEditingController(
      text: widget.phone == 'Not added' ? '' : widget.phone,
    );
    _emailController = TextEditingController(
      text: widget.email == 'Not available' ? '' : widget.email,
    );
    _selectedTitle = widget.guardianTitle;
    _selectedRelationship = widget.guardianRelationship;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Information'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Full name'),
                validator: (value) => value == null || value.trim().isEmpty
                    ? 'Enter your name'
                    : null,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) {
                  final address = value?.trim() ?? '';
                  final atIndex = address.indexOf('@');
                  return atIndex <= 0 ||
                          !address.substring(atIndex).contains('.')
                      ? 'Enter a valid email address'
                      : null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: 'Phone number'),
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                initialValue: _selectedRelationship,
                decoration: const InputDecoration(
                  labelText: 'Guardian relationship',
                ),
                items: AuthViewModel.guardianRelationships
                    .map(
                      (relationship) => DropdownMenuItem(
                        value: relationship,
                        child: Text(relationship),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => _selectedRelationship = value);
                  }
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                initialValue: _selectedTitle,
                decoration: const InputDecoration(labelText: 'Title'),
                items: const [
                  DropdownMenuItem(value: 'Mr', child: Text('Mr')),
                  DropdownMenuItem(value: 'Mrs', child: Text('Mrs')),
                ],
                onChanged: (value) {
                  if (value != null) setState(() => _selectedTitle = value);
                },
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pop(context, (
                _nameController.text.trim(),
                _phoneController.text.trim(),
                _emailController.text.trim(),
                _selectedTitle,
                _selectedRelationship,
              ));
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: SchoolTheme.green, size: 19),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(color: SchoolTheme.muted, fontSize: 12),
              ),
              const SizedBox(height: 2),
              Text(value),
            ],
          ),
        ),
      ],
    );
  }
}
