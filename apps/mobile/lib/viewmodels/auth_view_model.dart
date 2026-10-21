import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Owns authentication requests and exposes transient UI state to auth screens.
class AuthViewModel extends ChangeNotifier {
  AuthViewModel(this._auth);

  static const guardianRelationships = [
    'Father',
    'Mother',
    'Sister',
    'Brother',
    'Uncle',
    'Grandparent',
    'Aunt',
  ];

  final GoTrueClient _auth;

  bool isLoading = false;
  String? errorMessage;
  String? statusMessage;

  User? get currentUser => _auth.currentUser;

  String get fullName =>
      currentUser?.userMetadata?['full_name'] as String? ?? 'Parent';

  String get guardianTitle =>
      currentUser?.userMetadata?['guardian_title'] as String? ?? 'Mr';

  String get guardianRelationship {
    final relationship =
        currentUser?.userMetadata?['guardian_relationship'] as String?;
    return guardianRelationships.contains(relationship)
        ? relationship!
        : 'Father';
  }

  String get dashboardName {
    final nameParts = fullName.trim().split(RegExp(r'\s+'));
    final surname = nameParts.isEmpty ? '' : nameParts.last;
    return surname.isEmpty || surname == 'Parent'
        ? fullName
        : '$guardianTitle $surname';
  }

  String get phone =>
      currentUser?.userMetadata?['phone'] as String? ?? 'Not added';

  String get childFullName {
    final metadata = currentUser?.userMetadata;
    return [
      metadata?['child_name'] as String?,
      metadata?['child_surname'] as String?,
    ].whereType<String>().where((part) => part.trim().isNotEmpty).join(' ');
  }

  String get childGrade =>
      currentUser?.userMetadata?['child_grade'] as String? ?? 'Grade 5B';

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
        emailRedirectTo: kIsWeb
            ? Uri.base.origin
            : 'io.supabase.flutter://login-callback/',
        data: {'full_name': fullName.trim(), 'phone': phone.trim()},
      );
      if (response.session == null) {
        statusMessage =
            'Confirm your email using the link. You will return to Skool-Comm '
            'to create the learner profile.';
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

  Future<bool> updateContact({
    required String fullName,
    required String phone,
    required String email,
    required String guardianTitle,
    required String guardianRelationship,
  }) async {
    _clearMessages();
    isLoading = true;
    notifyListeners();
    try {
      final normalizedEmail = email.trim();
      final emailChanged = normalizedEmail != currentUser?.email;
      await _auth.updateUser(
        UserAttributes(
          data: {
            'full_name': fullName.trim(),
            'phone': phone.trim(),
            'guardian_title': guardianTitle,
            'guardian_relationship': guardianRelationship,
          },
        ),
      );
      if (emailChanged) {
        try {
          await _auth.updateUser(UserAttributes(email: normalizedEmail));
          statusMessage =
              'Profile information saved. If email confirmation is enabled, confirm the link sent to $normalizedEmail.';
        } on AuthException catch (error) {
          statusMessage =
              'Profile information saved, but the email was not changed: ${error.message}';
        } on Exception catch (error) {
          statusMessage =
              'Profile information saved, but the email was not changed: $error';
        }
      }
      return true;
    } on AuthException catch (error) {
      errorMessage = 'Unable to save profile information: ${error.message}';
    } on Exception catch (error) {
      errorMessage = 'Unable to save profile information: $error';
    } finally {
      isLoading = false;
      notifyListeners();
    }
    return false;
  }

  Future<bool> changePassword(String password) async {
    _clearMessages();
    isLoading = true;
    notifyListeners();
    try {
      await _auth.updateUser(UserAttributes(password: password));
      statusMessage = 'Password updated.';
      return true;
    } on AuthException catch (error) {
      errorMessage = error.message;
    } on Exception catch (error) {
      errorMessage = 'Unable to update password: $error';
    } finally {
      isLoading = false;
      notifyListeners();
    }
    return false;
  }

  Future<bool> signOut() async {
    _clearMessages();
    isLoading = true;
    notifyListeners();
    try {
      await _auth.signOut();
      return true;
    } on AuthException catch (error) {
      errorMessage = error.message;
    } on Exception catch (error) {
      errorMessage = 'Unable to sign out: $error';
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
