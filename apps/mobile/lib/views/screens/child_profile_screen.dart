import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/auth_view_model.dart';
import '../widgets/school_widgets.dart';
import 'main_navigation_screen.dart';

class ChildProfileScreen extends StatefulWidget {
  const ChildProfileScreen({super.key});

  @override
  State<ChildProfileScreen> createState() => _ChildProfileScreenState();
}

class _ChildProfileScreenState extends State<ChildProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _idNumberController = TextEditingController();
  late final AuthViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = AuthViewModel(Supabase.instance.client.auth);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _idNumberController.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;
    final saved = await _viewModel.saveChildProfile(
      name: _nameController.text,
      surname: _surnameController.text,
    );
    if (!mounted || !saved) return;
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute<void>(builder: (_) => const MainNavigationScreen()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (context, _) => Scaffold(
        appBar: AppBar(
          title: const Text('Wilgehof Primary'),
          actions: [
            IconButton(
              tooltip: 'Continue',
              onPressed: _saveProfile,
              icon: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 14),
                  const ScreenIntro(
                    title: 'Create Child Profile',
                    subtitle: "Add your child's details to your school profile.",
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: SchoolTheme.paleGreen,
                          child: Icon(
                            Icons.person_outline,
                            color: SchoolTheme.green,
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profile picture (optional)',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Image upload can be added when storage is configured.',
                                style: TextStyle(
                                  color: SchoolTheme.muted,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (_viewModel.errorMessage != null)
                    StatusBanner(
                      message: _viewModel.errorMessage!,
                      isError: true,
                    ),
                  _profileField(
                    controller: _nameController,
                    label: 'Name',
                    hint: "Enter child's name",
                    validator: _required,
                  ),
                  _profileField(
                    controller: _surnameController,
                    label: 'Surname',
                    hint: "Enter child's surname",
                    validator: _required,
                  ),
                  _profileField(
                    controller: _idNumberController,
                    label: 'ID number',
                    hint: 'Enter 13-digit ID number',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || !RegExp(r'^\d{13}$').hasMatch(value)) {
                        return 'Enter a 13-digit ID number';
                      }
                      return null;
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4, bottom: 20),
                    child: Text(
                      "Use the ID number on your child's birth certificate. "
                      "It is validated here but not stored until secure profile "
                      "storage is configured.",
                      style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
                    ),
                  ),
                  SchoolPrimaryButton(
                    label: 'Submit',
                    isLoading: _viewModel.isLoading,
                    onPressed: _saveProfile,
                  ),
                  const SizedBox(height: 12),
                  const Center(
                    child: Text(
                      "Your child's details are kept private and secure.",
                      style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required String? Function(String?) validator,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 7),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(hintText: hint),
            validator: validator,
          ),
        ],
      ),
    );
  }

  String? _required(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }
}
