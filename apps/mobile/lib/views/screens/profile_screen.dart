import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../app/school_theme.dart';
import '../../utils/validators.dart';
import '../../viewmodels/auth_view_model.dart';
import 'welcome_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    required this.viewModel,
    required this.onBack,
    required this.onOpenSettings,
    required this.onOpenChildren,
    required this.onAddChild,
    super.key,
  });

  final AuthViewModel viewModel;
  final VoidCallback onBack;
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
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 294,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [SchoolTheme.darkGreen, SchoolTheme.green],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                      if (viewModel.avatarUrl != null)
                        Positioned.fill(
                          child: Opacity(
                            opacity: 0.24,
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 16,
                                sigmaY: 16,
                              ),
                              child: Transform.flip(
                                flipX: true,
                                child: Image.network(
                                  viewModel.avatarUrl!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, _, _) =>
                                      const SizedBox.expand(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      const DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x44234A32), Color(0xBB124A2E)],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      Positioned(
                        top: -72,
                        right: -35,
                        child: _HeroDecoration(size: 210),
                      ),
                      Positioned(
                        bottom: 15,
                        left: -88,
                        child: _HeroDecoration(size: 176),
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        right: 8,
                        child: Row(
                          children: [
                            IconButton(
                              tooltip: 'Back',
                              onPressed: onBack,
                              style: IconButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.white.withValues(
                                  alpha: 0.12,
                                ),
                              ),
                              icon: const Icon(Icons.arrow_back),
                            ),
                            const Expanded(
                              child: Text(
                                'My profile',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            IconButton(
                              tooltip: 'Settings',
                              onPressed: onOpenSettings,
                              style: IconButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.white.withValues(
                                  alpha: 0.12,
                                ),
                              ),
                              icon: const Icon(Icons.settings_outlined),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 66,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: InkWell(
                            onTap: viewModel.isLoadingAvatar
                                ? null
                                : () => _pickProfilePhoto(context),
                            customBorder: const CircleBorder(),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withValues(alpha: 0.22),
                                    border: Border.all(
                                      color: Colors.white.withValues(
                                        alpha: 0.65,
                                      ),
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 43,
                                    backgroundColor: SchoolTheme.paleGreen,
                                    child: viewModel.avatarUrl == null
                                        ? _avatarFallback(name)
                                        : ClipOval(
                                            child: Image.network(
                                              viewModel.avatarUrl!,
                                              width: 86,
                                              height: 86,
                                              fit: BoxFit.cover,
                                              errorBuilder: (_, _, _) =>
                                                  _avatarFallback(name),
                                            ),
                                          ),
                                  ),
                                ),
                                Positioned(
                                  right: 1,
                                  bottom: 1,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: SchoolTheme.paleGreen,
                                        width: 2,
                                      ),
                                    ),
                                    child: viewModel.isLoadingAvatar
                                        ? const Padding(
                                            padding: EdgeInsets.all(6),
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: SchoolTheme.green,
                                            ),
                                          )
                                        : const Icon(
                                            Icons.camera_alt_outlined,
                                            size: 15,
                                            color: SchoolTheme.green,
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 174,
                        left: 20,
                        right: 20,
                        child: Column(
                          children: [
                            Text(
                              name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.1,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.16),
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.18),
                                ),
                              ),
                              child: Text(
                                '$guardianRelationship · Parent account',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: TextButton.icon(
                            onPressed: viewModel.isLoadingAvatar
                                ? null
                                : () => _pickProfilePhoto(context),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              visualDensity: VisualDensity.compact,
                            ),
                            icon: const Icon(
                              Icons.photo_camera_outlined,
                              size: 17,
                            ),
                            label: Text(
                              viewModel.avatarUrl == null
                                  ? 'Add profile picture'
                                  : 'Change profile picture',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 22, 18, 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (viewModel.avatarErrorMessage != null) ...[
                      Text(
                        viewModel.avatarErrorMessage!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Contact details',
                          style: TextStyle(
                            color: SchoolTheme.ink,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextButton.icon(
                          onPressed: () => _editContact(
                            context,
                            name,
                            phone,
                            email,
                            viewModel.guardianTitle,
                            guardianRelationship,
                          ),
                          icon: const Icon(Icons.edit_outlined, size: 17),
                          label: const Text('Edit'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Color(0xFFE6ECE8)),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            _ContactRow(
                              icon: Icons.phone_outlined,
                              label: 'Phone Number',
                              value: Validators.formatPhone(phone),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 14),
                              child: Divider(
                                height: 1,
                                color: Color(0xFFEEF1EF),
                              ),
                            ),
                            _ContactRow(
                              icon: Icons.mail_outline,
                              label: 'Email address',
                              value: email,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Family',
                      style: TextStyle(
                        color: SchoolTheme.ink,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Card(
                      color: const Color(0xFFF1F7F3),
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        leading: Container(
                          width: 46,
                          height: 46,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.family_restroom_rounded,
                            color: SchoolTheme.green,
                          ),
                        ),
                        title: const Text(
                          'My Children',
                          style: TextStyle(
                            color: SchoolTheme.ink,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          childLabel.isEmpty
                              ? 'View and manage linked learners'
                              : childLabel,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                        onTap: onOpenChildren,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.tonalIcon(
                        onPressed: onAddChild,
                        icon: const Icon(Icons.person_add_alt_1),
                        label: const Text('Add Child'),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          foregroundColor: SchoolTheme.darkGreen,
                          backgroundColor: const Color(0xFFEAF5EF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () => _signOut(context),
                        icon: const Icon(Icons.logout_rounded),
                        label: const Text('Log out'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: const Color(0xFFB34335),
                          side: const BorderSide(color: Color(0xFFF0D7D3)),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
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

  Widget _avatarFallback(String name) {
    return Text(
      name.isEmpty ? 'P' : name[0].toUpperCase(),
      style: const TextStyle(
        color: SchoolTheme.green,
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Future<void> _pickProfilePhoto(BuildContext context) async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 512,
        maxHeight: 512,
      );
      if (image == null) return;

      final contentType =
          image.mimeType ??
          // Some platforms omit the MIME type, so infer it from the selected filename.
          switch (image.name.toLowerCase().split('.').last) {
            'png' => 'image/png',
            'webp' => 'image/webp',
            _ => 'image/jpeg',
          };
      final uploaded = await viewModel.uploadAvatar(
        bytes: await image.readAsBytes(),
        contentType: contentType,
      );
      if (uploaded && context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Profile photo updated.')));
      }
    } on Exception catch (error) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unable to select a profile photo: $error')),
      );
    }
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

class _HeroDecoration extends StatelessWidget {
  const _HeroDecoration({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
          color: Colors.white.withValues(alpha: 0.035),
        ),
      ),
    );
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
      text: widget.phone == 'Not added'
          ? ''
          : Validators.formatPhone(widget.phone),
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
                validator: Validators.email,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: 'Phone number'),
                validator: Validators.phone,
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
                Validators.normalizePhone(_phoneController.text) ??
                    _phoneController.text.trim(),
                Validators.normalizeEmail(_emailController.text),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: SchoolTheme.paleGreen,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: SchoolTheme.green, size: 20),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: SchoolTheme.muted,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                value,
                style: const TextStyle(
                  color: SchoolTheme.ink,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
