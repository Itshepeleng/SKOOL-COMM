import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/school_announcement.dart';

class MessagesViewModel extends ChangeNotifier {
  MessagesViewModel(this._client);

  final SupabaseClient _client;

  List<SchoolAnnouncement> announcements = [];
  bool isLoading = false;
  String? errorMessage;
  bool _disposed = false;

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  void _notifyListeners() {
    if (!_disposed) notifyListeners();
  }

  Future<bool> loadAnnouncements() async {
    isLoading = true;
    errorMessage = null;
    _notifyListeners();
    try {
      final response = await _client.rpc('get_parent_announcements');
      if (response is! List) {
        throw const FormatException('The announcement list is invalid.');
      }
      announcements = response.map((row) {
        if (row is! Map<String, dynamic>) {
          throw const FormatException('An announcement record is invalid.');
        }
        return SchoolAnnouncement.fromJson(row);
      }).toList();
      return true;
    } on PostgrestException catch (error) {
      errorMessage = 'Unable to load school messages: ${error.message}';
    } on FormatException catch (error) {
      errorMessage = 'Unable to read school messages: ${error.message}';
    } on Exception catch (error) {
      errorMessage = 'Unable to load school messages: $error';
    } finally {
      isLoading = false;
      _notifyListeners();
    }
    return false;
  }
}
