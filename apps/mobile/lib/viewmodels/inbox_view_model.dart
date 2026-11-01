import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InboxMessage {
  InboxMessage({
    required this.id,
    required this.title,
    required this.body,
    this.sender = '',
    this.learnerName = '',
    this.openedAt,
    this.createdAt,
  });

  final int id;
  final String title;
  final String body;
  final String sender;

  /// The learner this message is about (empty for class or whole-school messages).
  final String learnerName;
  DateTime? openedAt;
  final DateTime? createdAt;

  bool get isRead => openedAt != null;

  factory InboxMessage.fromRow(Map<String, dynamic> row) {
    DateTime? parse(Object? v) =>
        v == null ? null : DateTime.tryParse(v.toString())?.toLocal();
    return InboxMessage(
      id: (row['id'] as num).toInt(),
      title: row['title']?.toString() ?? 'School message',
      body: row['body']?.toString() ?? '',
      sender: row['sender']?.toString().trim() ?? '',
      learnerName: row['learner_name']?.toString().trim() ?? '',
      openedAt: parse(row['opened_at']),
      createdAt: parse(row['created_at']),
    );
  }
}

/// Loads the parent's message notifications, listens for new ones live,
/// and marks them as read through track_notification.
class InboxViewModel extends ChangeNotifier {
  InboxViewModel(this._client);

  final SupabaseClient _client;
  final List<InboxMessage> messages = [];
  final List<InboxMessage> _popupQueue = [];
  RealtimeChannel? _channel;
  bool _disposed = false;
  String? errorMessage;

  int get unreadCount => messages.where((m) => !m.isRead).length;

  Future<void> start() async {
    final uid = _client.auth.currentUser?.id;
    if (uid == null) return;

    await load();
    // Messages that arrived while the app was closed pop up on launch.
    _popupQueue.addAll(messages.where((m) => !m.isRead).toList().reversed);
    _notify();

    _channel = _client
        .channel('parent-inbox-$uid')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'parent_notifications',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'recipient_id',
            value: uid,
          ),
          callback: (payload) => _onInsert(payload.newRecord),
        )
        .subscribe();
  }

  Future<void> _onInsert(Map<String, dynamic> row) async {
    if (row['kind'] != 'message') return;
    final id = (row['id'] as num).toInt();
    // Reload so the sender name comes with it.
    await load();
    InboxMessage? message;
    for (final m in messages) {
      if (m.id == id) message = m;
    }
    if (message == null) {
      // Fallback if the reload failed: use the raw row.
      message = InboxMessage.fromRow(row);
      messages.insert(0, message);
    }
    if (!message.isRead) _popupQueue.add(message);
    _notify();
  }

  Future<void> load() async {
    if (_client.auth.currentUser == null) return;
    try {
      final response = await _client.rpc('get_my_messages');
      if (response is! List) {
        throw const FormatException('The message list is invalid.');
      }
      messages
        ..clear()
        ..addAll(
          response.whereType<Map<String, dynamic>>().map(
            InboxMessage.fromRow,
          ),
        );
      errorMessage = null;
    } on Exception catch (e) {
      errorMessage = 'Unable to load messages: $e';
    }
    _notify();
  }

  /// Next unread message waiting to pop up, or null.
  InboxMessage? nextPopup() {
    while (_popupQueue.isNotEmpty) {
      final m = _popupQueue.removeAt(0);
      if (!m.isRead) return m;
    }
    return null;
  }

  Future<bool> markRead(InboxMessage message) async {
    if (message.isRead) return true;
    try {
      await _client.rpc(
        'track_notification',
        params: {'p_id': message.id, 'p_event': 'opened'},
      );
      message.openedAt = DateTime.now();
      _notify();
      return true;
    } on Exception catch (e) {
      errorMessage = 'Unable to mark message as read: $e';
      _notify();
      return false;
    }
  }

  void _notify() {
    if (!_disposed) notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    final channel = _channel;
    if (channel != null) _client.removeChannel(channel);
    super.dispose();
  }
}