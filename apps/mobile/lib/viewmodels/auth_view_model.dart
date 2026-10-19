import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Owns authentication requests and exposes transient UI state to auth screens.
class AuthViewModel extends ChangeNotifier {
  AuthViewModel(this._auth);

  final GoTrueClient _auth;

  bool isLoading = false;
  String? errorMessage;
  String? statusMessage;

  Future<AuthResponse?> signIn({
    required String email,
    required String password,
  }) async {
    _clearMessages();
    isLoading = true;
    notifyListeners();

    try {
      return await _auth.signInWithPassword(
        email: email.trim(),
        password: password,
      );
    } on AuthException catch (error) {
      errorMessage = error.message;
    } on Exception catch (error) {
      errorMessage = 'Unable to sign in: $error';
    } finally {
      isLoading = false;
      notifyListeners();
    }
    return null;
  }

  Future<AuthResponse?> signUp({
    required String fullName,
    required String email,
    required String phone,
    required String password,
  }) async {
    _clearMessages();
    isLoading = true;
    notifyListeners();

    try {
      final response = await _auth.signUp(
        email: email.trim(),
        password: password,
        // Return email confirmation to this web app instead of Supabase's
        // configured Site URL, which may point at an unrelated local port.
        emailRedirectTo: kIsWeb ? Uri.base.origin : null,
        data: {'full_name': fullName.trim(), 'phone': phone.trim()},
      );
      if (response.session == null) {
        statusMessage = 'Check your email to confirm your account.';
      }
      return response;
    } on AuthException catch (error) {
      errorMessage = error.message;
    } on Exception catch (error) {
      errorMessage = 'Unable to create your account: $error';
    } finally {
      isLoading = false;
      notifyListeners();
    }
    return null;
  }

  Future<bool> saveChildProfile({
    required String name,
    required String surname,
  }) async {
    _clearMessages();
    isLoading = true;
    notifyListeners();

    try {
      await _auth.updateUser(
        UserAttributes(
          data: {'child_name': name.trim(), 'child_surname': surname.trim()},
        ),
      );
      return true;
    } on AuthException catch (error) {
      errorMessage = error.message;
    } on Exception catch (error) {
      errorMessage = 'Unable to save the child profile: $error';
    } finally {
      isLoading = false;
      notifyListeners();
    }
    return false;
  }

  void _clearMessages() {
    errorMessage = null;
    statusMessage = null;
  }
}
