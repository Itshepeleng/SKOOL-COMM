import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../viewmodels/auth_view_model.dart';
import '../widgets/school_widgets.dart';
import 'create_account_screen.dart';
import 'main_navigation_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late final AuthViewModel _viewModel;
  bool _rememberMe = false;
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _viewModel = AuthViewModel(Supabase.instance.client.auth);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  Future<void> _signIn() async {
    if (!_formKey.currentState!.validate()) return;
    final response = await _viewModel.signIn(
      email: _emailController.text,
      password: _passwordController.text,
    );
    if (!mounted || response?.session == null) return;
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
        appBar: AppBar(title: const Text('Log In')),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 440),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(child: SchoolLogo(compact: true)),
                      const SizedBox(height: 34),
                      const ScreenIntro(
                        title: 'Log In',
                        subtitle:
                            'Welcome back! Please log in to your account to continue.',
                      ),
                      const SizedBox(height: 22),
                      if (_viewModel.errorMessage != null)
                        StatusBanner(
                          message: _viewModel.errorMessage!,
                          isError: true,
                        ),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.mail_outline),
                          hintText: 'Email address',
                        ),
                        validator: (value) {
                          if (value == null || !value.contains('@')) {
                            return 'Enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 12),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) => _signIn(),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            tooltip: _obscurePassword
                                ? 'Show password'
                                : 'Hide password',
                            onPressed: () => setState(
                              () => _obscurePassword = !_obscurePassword,
                            ),
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter your password';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (value) =>
                                setState(() => _rememberMe = value ?? false),
                          ),
                          const Text('Remember me'),
                          const Spacer(),
                          TextButton(
                            onPressed: _showForgotPasswordDialog,
                            child: const Text('Forgot Password?'),
                          ),
                        ],
                      ),
                      SchoolPrimaryButton(
                        label: 'Log In',
                        icon: Icons.arrow_forward,
                        isLoading: _viewModel.isLoading,
                        onPressed: _signIn,
                      ),
                      const SizedBox(height: 14),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const CreateAccountScreen(),
                            ),
                          ),
                          child: const Text(
                            "Don't have an account? Create Account",
                          ),
                        ),
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

  Future<void> _showForgotPasswordDialog() async {
    final email = _emailController.text.trim();
    if (!email.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter your email address first.')),
      );
      return;
    }

    try {
      await Supabase.instance.client.auth.resetPasswordForEmail(email);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password reset email sent.')),
      );
    } on AuthException catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error.message)));
    } on Exception catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unable to send reset email: $error')),
      );
    }
  }
}
