import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/learner_profile.dart';

class LearnerViewModel extends ChangeNotifier {
  LearnerViewModel(this._client);

  final SupabaseClient _client;

  List<LearnerProfile> children = [];
  bool isLoading = false;
  String? errorMessage;
  String? _parentAuthId;
  String? _parentFirstName;
  String? _parentLastName;
  String? _parentEmail;
  String? _parentPhone;
  bool _disposed = false;

  bool get hasAuthenticatedUser => _client.auth.currentUser != null;

  LearnerViewModel copyForRegistration() {
    return LearnerViewModel(_client)
      ..children = List.of(children)
      .._parentAuthId = _parentAuthId
      .._parentFirstName = _parentFirstName
      .._parentLastName = _parentLastName
      .._parentEmail = _parentEmail
      .._parentPhone = _parentPhone;
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  void _notifyListeners() {
    if (!_disposed) notifyListeners();
  }

  Future<bool> loadChildren() async {
    isLoading = true;
    errorMessage = null;
    _notifyListeners();
    try {
      final response = await _client.rpc('get_my_children');
      if (response is! List) {
        throw const FormatException('The linked learner list is invalid.');
      }
      children = response.map((row) {
        if (row is! Map<String, dynamic>) {
          throw const FormatException('A learner record is invalid.');
        }
        return LearnerProfile.fromJson(row);
      }).toList();
      return true;
    } on PostgrestException catch (error) {
      errorMessage = 'Unable to load linked learners: ${error.message}';
    } on FormatException catch (error) {
      errorMessage = 'Unable to read linked learner records: ${error.message}';
    } on Exception catch (error) {
      errorMessage = 'Unable to load linked learners: $error';
    } finally {
      isLoading = false;
      _notifyListeners();
    }
    return false;
  }

  Future<bool> registerLearner({
    required String firstName,
    required String lastName,
    required String grade,
    required String className,
    required DateTime dateOfBirth,
    required String idNumber,
    required String relationship,
    String? parentAuthId,
    String? parentFirstName,
    String? parentLastName,
    String? parentEmail,
    String? parentPhone,
  }) async {
    isLoading = true;
    errorMessage = null;
    _notifyListeners();

    try {
      final user = _client.auth.currentUser;
      final metadata = user?.userMetadata ?? const <String, dynamic>{};
      final fullName = (metadata['full_name'] as String? ?? '').trim();
      final parentName = fullName.isEmpty
          ? <String>[]
          : fullName.split(RegExp(r'\s+'));
      final resolvedFirstName =
          parentFirstName ??
          _parentFirstName ??
          (parentName.isEmpty ? '' : parentName.first);
      final resolvedLastName =
          parentLastName ?? _parentLastName ?? parentName.skip(1).join(' ');
      final authId = parentAuthId ?? _parentAuthId ?? user?.id;
      if (authId == null) {
        throw StateError('Parent registration details are unavailable.');
      }
      final resolvedEmail = parentEmail ?? _parentEmail ?? user?.email ?? '';
      final resolvedPhone =
          parentPhone ?? _parentPhone ?? metadata['phone'] as String? ?? '';
      _parentAuthId = authId;
      _parentFirstName = resolvedFirstName;
      _parentLastName = resolvedLastName;
      _parentEmail = resolvedEmail;
      _parentPhone = resolvedPhone;
      final response = await _client.rpc(
        'register_parent_and_learner',
        params: {
          'p_auth_id': authId,
          'p_first_name': resolvedFirstName,
          'p_last_name': resolvedLastName.isEmpty
              ? resolvedFirstName
              : resolvedLastName,
          'p_email': resolvedEmail,
          'p_phone': resolvedPhone,
          'p_learner_first_name': firstName.trim(),
          'p_learner_last_name': lastName.trim(),
          'p_grade': grade.trim(),
          'p_class': className.trim(),
          'p_dob':
              '${dateOfBirth.year.toString().padLeft(4, '0')}-'
              '${dateOfBirth.month.toString().padLeft(2, '0')}-'
              '${dateOfBirth.day.toString().padLeft(2, '0')}',
          'p_idnumber': idNumber.trim(),
          'p_relationship': relationship,
        },
      );

      if (response is! Map) {
        throw const FormatException(
          'The registration service returned an invalid response.',
        );
      }
      final status = response['status']?.toString().toLowerCase();
      if (status == 'success') {
        final returnedLearnerId =
            response['learnerid'] ?? response['learner_id'];
        final registeredLearner = LearnerProfile(
          learnerId: returnedLearnerId is num
              ? returnedLearnerId.toInt()
              : null,
          firstName: firstName.trim(),
          lastName: lastName.trim(),
          grade: grade.trim(),
          className: className.trim(),
          relationship: relationship,
        );
        children = [
          ...children.where(
            (child) => registeredLearner.learnerId != null
                ? child.learnerId != registeredLearner.learnerId
                : child.fullName != registeredLearner.fullName,
          ),
          registeredLearner,
        ];
        return true;
      }
      if (status == 'error') {
        errorMessage =
            response['message']?.toString() ??
            'The registration service could not complete the request.';
      } else {
        throw const FormatException(
          'The registration service returned an unknown status.',
        );
      }
    } on PostgrestException catch (error) {
      errorMessage = 'Unable to save the learner profile: ${error.message}';
    } on FormatException catch (error) {
      errorMessage = error.message;
    } on StateError catch (error) {
      errorMessage = error.message;
    } on Exception catch (error) {
      errorMessage = 'Unable to save the learner profile: $error';
    } finally {
      isLoading = false;
      _notifyListeners();
    }
    return false;
  }
}
