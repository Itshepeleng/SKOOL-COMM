import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../viewmodels/auth_view_model.dart';
import '../widgets/school_widgets.dart';
import 'child_profile_screen.dart';
import 'terms_and_conditions_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  late final AuthViewModel _viewModel;
  bool _acceptedTerms = false;

  @override
  void initState() {
    super.initState();
    _viewModel = AuthViewModel(Supabase.instance.client.auth);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  Future<void> _createAccount() async {
    if (!_formKey.currentState!.validate()) return;
    if (!_acceptedTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please accept the terms and conditions.'),
        ),
      );
      return;
    }

    final response = await _viewModel.signUp(
      fullName: _nameController.text,
      email: _emailController.text,
      phone: _phoneController.text,
      password: _passwordController.text,
    );
    if (!mounted) return;
    if (response == null) return;
    if (response.user == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Theme.of(context).colorScheme.error,
          content: Text(
            'Account creation did not return a Supabase Auth user ID.',
            style: TextStyle(color: Theme.of(context).colorScheme.onError),
          ),
        ),
      );
      return;
    }

    final needsEmailConfirmation = response.session == null;
    if (needsEmailConfirmation) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Your account is registered. Confirm your email to log in later.',
          ),
        ),
      );
    }
    final parentName = _nameController.text.trim().split(RegExp(r'\s+'));
    final parentFirstName = parentName.first;
    final enteredLastName = parentName.skip(1).join(' ');
    final parentLastName = enteredLastName.isEmpty
        ? parentFirstName
        : enteredLastName;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute<void>(
        builder: (_) => ChildProfileScreen(
          parentAuthId: response.user?.id,
          parentFirstName: parentFirstName,
          parentLastName: parentLastName,
          parentEmail: _emailController.text.trim(),
          parentPhone: _phoneController.text.trim(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (context, _) => Scaffold(
        appBar: AppBar(title: const Text('Create Account')),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 480),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                                            // Make the logo bigger just for this screen
                      const Center(
                        child: SizedBox(
                          height: 110, // Adjust this number if you want it even bigger
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: SchoolLogo(compact: true),
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const ScreenIntro(
                        title: 'Create Account',
                        subtitle:
                            'Join our school community. Fill in your details to stay updated, progress and more.',
                      ),
                      const SizedBox(height: 18),
                      if (_viewModel.errorMessage != null)
                        StatusBanner(
                          message: _viewModel.errorMessage!,
                          isError: true,
                        ),
                      if (_viewModel.statusMessage != null)
                        StatusBanner(
                          message: _viewModel.statusMessage!,
                          isError: false,
                        ),
                      _field(
                        controller: _nameController,
                        hint: 'Full name',
                        icon: Icons.person_outline,
                        validator: _required,
                      ),
                      _field(
                        controller: _emailController,
                        hint: 'Email address',
                        icon: Icons.mail_outline,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || !value.contains('@')) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      _field(
                        controller: _phoneController,
                        hint: 'Phone number',
                        icon: Icons.phone_outlined,
                        keyboardType: TextInputType.phone,
                        validator: _required,
                      ),
                      _field(
                        controller: _passwordController,
                        hint: 'Create password',
                        icon: Icons.lock_outline,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.length < 8) {
                            return 'Use at least 8 characters';
                          }
                          return null;
                        },
                      ),
                      _field(
                        controller: _confirmPasswordController,
                        hint: 'Confirm password',
                        icon: Icons.lock_outline,
                        obscureText: true,
                        validator: (value) {
                          if (value != _passwordController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _acceptedTerms,
                            onChanged: (value) =>
                                setState(() => _acceptedTerms = value ?? false),
                          ),
                          Expanded(
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                const Text('I agree to the '),
                                TextButton(
                                  onPressed: () =>
                                      TermsAndConditionsScreen.open(context),
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  child: const Text('Terms & Conditions'),
                                ),
                                const Text('.'),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SchoolPrimaryButton(
                        label: 'Next',
                        icon: Icons.arrow_forward,
                        backgroundColor: const Color(0xFFF58220),
                        isLoading: _viewModel.isLoading,
                        onPressed: _createAccount,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _field({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    required String? Function(String?) validator,
    TextInputType? keyboardType,
    bool obscureText = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(prefixIcon: Icon(icon), hintText: hint),
        validator: validator,
      ),
    );
  }

  String? _required(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }
}
