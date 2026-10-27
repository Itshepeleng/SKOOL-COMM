import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/learner_profile.dart';
import '../models/learner_records.dart';
import '../models/school_models.dart';

class LearnerViewModel extends ChangeNotifier {
  LearnerViewModel(this._client);

  final SupabaseClient _client;

  List<LearnerProfile> children = [];
  List<LearnerAttendanceRecord> attendanceRecords = [];
  List<PointRecord> behaviouralRecords = [];
  int? selectedLearnerId;
  int? attendanceLearnerId;
  int? behaviouralLearnerId;
  bool isLoading = false;
  bool isLoadingAttendance = false;
  bool isLoadingBehaviour = false;
  String? errorMessage;
  String? statusMessage;
  String? attendanceErrorMessage;
  String? behaviourErrorMessage;
  String? _parentAuthId;
  String? _parentFirstName;
  String? _parentLastName;
  String? _parentEmail;
  String? _parentPhone;
  final Set<int> _recentlyRegisteredLearnerIds = {};
  int _attendanceRequestId = 0;
  int _behaviourRequestId = 0;
  bool _disposed = false;

  bool get hasAuthenticatedUser => _client.auth.currentUser != null;

  LearnerViewModel copyForRegistration() {
    // A pushed registration route owns its notifier without taking over this screen's state.
    return LearnerViewModel(_client)
      ..children = List.of(children)
      ..selectedLearnerId = selectedLearnerId
      .._recentlyRegisteredLearnerIds.addAll(_recentlyRegisteredLearnerIds)
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

  void seedRegisteredChildren(List<LearnerProfile> registeredChildren) {
    children = List.of(registeredChildren);
    _recentlyRegisteredLearnerIds.addAll(
      registeredChildren.map((child) => child.learnerId).whereType<int>(),
    );
    selectedLearnerId ??= registeredChildren
        .map((child) => child.learnerId)
        .whereType<int>()
        .firstOrNull;
  }

  Future<bool> loadChildren() async {
    if (!hasAuthenticatedUser) return children.isNotEmpty;

    isLoading = true;
    errorMessage = null;
    _notifyListeners();
    try {
      final response = await _client.rpc('get_my_children');
      if (response is! List) {
        throw const FormatException('The linked learner list is invalid.');
      }
      final linkedChildren = response.map((row) {
        if (row is! Map<String, dynamic>) {
          throw const FormatException('A learner record is invalid.');
        }
        return LearnerProfile.fromJson(row);
      }).toList();
      final linkedIds = linkedChildren
          .map((child) => child.learnerId)
          .whereType<int>()
          .toSet();
      final recentlyRegisteredChildren = children.where(
        (child) =>
            child.learnerId != null &&
            _recentlyRegisteredLearnerIds.contains(child.learnerId) &&
            !linkedIds.contains(child.learnerId),
      );
      // Keep newly saved learners visible if the follow-up RPC has not returned them yet.
      children = [...linkedChildren, ...recentlyRegisteredChildren];
      _recentlyRegisteredLearnerIds.removeAll(linkedIds);
      if (!children.any((child) => child.learnerId == selectedLearnerId)) {
        selectedLearnerId = children
            .map((child) => child.learnerId)
            .whereType<int>()
            .firstOrNull;
      }
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

  LearnerProfile? get selectedChild {
    for (final child in children) {
      if (child.learnerId == selectedLearnerId) return child;
    }
    return null;
  }

  void selectChild(LearnerProfile child) {
    final learnerId = child.learnerId;
    if (learnerId == null ||
        !children.any((item) => item.learnerId == learnerId)) {
      throw ArgumentError.value(child, 'child', 'Must be a linked learner.');
    }
    selectedLearnerId = learnerId;
    _notifyListeners();
  }

  Future<bool> loadAttendanceRecords(int learnerId) async {
    // Ignore stale responses if the user switches learners before a request finishes.
    final requestId = ++_attendanceRequestId;
    isLoadingAttendance = true;
    attendanceErrorMessage = null;
    _notifyListeners();
    try {
      final response = await _client.rpc(
        'get_my_learner_attendance',
        params: {'p_learner_id': learnerId},
      );
      if (response is! List) {
        throw const FormatException('The attendance response is invalid.');
      }
      final records = response.map((row) {
        if (row is! Map<String, dynamic>) {
          throw const FormatException('An attendance record is invalid.');
        }
        return LearnerAttendanceRecord.fromJson(row);
      }).toList();
      if (requestId != _attendanceRequestId) return false;
      attendanceRecords = records;
      attendanceLearnerId = learnerId;
      return true;
    } on PostgrestException catch (error) {
      if (requestId == _attendanceRequestId) {
        attendanceErrorMessage =
            'Unable to load attendance records: ${error.message}';
      }
    } on FormatException catch (error) {
      if (requestId == _attendanceRequestId) {
        attendanceErrorMessage =
            'Unable to read attendance records: ${error.message}';
      }
    } on Exception catch (error) {
      if (requestId == _attendanceRequestId) {
        attendanceErrorMessage = 'Unable to load attendance records: $error';
      }
    } finally {
      if (requestId == _attendanceRequestId) {
        isLoadingAttendance = false;
        _notifyListeners();
      }
    }
    return false;
  }

  Future<bool> loadBehaviouralRecords(int learnerId) async {
    // Ignore stale responses if the user switches learners before a request finishes.
    final requestId = ++_behaviourRequestId;
    isLoadingBehaviour = true;
    behaviourErrorMessage = null;
    _notifyListeners();
    try {
      final response = await _client.rpc(
        'get_my_learner_behavioural_points',
        params: {'p_learner_id': learnerId},
      );
      if (response is! List) {
        throw const FormatException('The behaviour response is invalid.');
      }
      final records = response.map((row) {
        if (row is! Map<String, dynamic>) {
          throw const FormatException('A behaviour record is invalid.');
        }
        return PointRecord.fromJson(row);
      }).toList();
      if (requestId != _behaviourRequestId) return false;
      behaviouralRecords = records;
      behaviouralLearnerId = learnerId;
      return true;
    } on PostgrestException catch (error) {
      if (requestId == _behaviourRequestId) {
        behaviourErrorMessage =
            'Unable to load behaviour records: ${error.message}';
      }
    } on FormatException catch (error) {
      if (requestId == _behaviourRequestId) {
        behaviourErrorMessage =
            'Unable to read behaviour records: ${error.message}';
      }
    } on Exception catch (error) {
      if (requestId == _behaviourRequestId) {
        behaviourErrorMessage = 'Unable to load behaviour records: $error';
      }
    } finally {
      if (requestId == _behaviourRequestId) {
        isLoadingBehaviour = false;
        _notifyListeners();
      }
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
    statusMessage = null;
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
      // Retain these details when email confirmation leaves no active session.
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
        if (user?.id == authId) {
          try {
            await _client.auth.updateUser(
              UserAttributes(data: {'guardian_relationship': relationship}),
            );
          } on AuthException catch (error) {
            statusMessage =
                'Learner linked, but the parent relationship could not be '
                'updated: ${error.message}';
          } on Exception catch (error) {
            statusMessage =
                'Learner linked, but the parent relationship could not be '
                'updated: $error';
          }
        } else {
          statusMessage =
              'Learner linked. The parent relationship will be synced after '
              'you sign in.';
        }
        final returnedLearnerId =
            response['learnerid'] ?? response['learner_id'];
        final registeredLearner = LearnerProfile.fromJson({
          'learnerid': returnedLearnerId,
          'firstname': response['firstname']?.toString() ?? firstName.trim(),
          'lastname': response['lastname']?.toString() ?? lastName.trim(),
          'grade': response['grade']?.toString() ?? grade.trim(),
          'class_name': response['class_name']?.toString() ?? className.trim(),
          'relationship': response['relationship']?.toString() ?? relationship,
        });
        children = [
          ...children.where(
            (child) => registeredLearner.learnerId != null
                ? child.learnerId != registeredLearner.learnerId
                : child.fullName != registeredLearner.fullName,
          ),
          registeredLearner,
        ];
        selectedLearnerId = registeredLearner.learnerId;
        if (registeredLearner.learnerId case final learnerId?) {
          _recentlyRegisteredLearnerIds.add(learnerId);
        }
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
