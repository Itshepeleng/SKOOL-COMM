import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/school_models.dart';

class CalendarViewModel extends ChangeNotifier {
  CalendarViewModel({SupabaseClient? client, DateTime? initialMonth})
    : _client = client,
      visibleMonth = DateTime(
        (initialMonth ?? DateTime.now()).year,
        (initialMonth ?? DateTime.now()).month,
      ),
      selectedDate = DateTime(
        (initialMonth ?? DateTime.now()).year,
        (initialMonth ?? DateTime.now()).month,
        (initialMonth ?? DateTime.now()).day,
      ),
      events = client == null ? List.of(SchoolEvent.samples) : [];

  final SupabaseClient? _client;

  DateTime visibleMonth;
  DateTime selectedDate;
  List<SchoolEvent> events;
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

  List<SchoolEvent> get eventsForVisibleMonth {
    final monthStart = DateTime(visibleMonth.year, visibleMonth.month);
    final monthEnd = DateTime(visibleMonth.year, visibleMonth.month + 1);
    return events
        .where(
          (event) =>
              event.date.isBefore(monthEnd) &&
              !event.endDate.isBefore(monthStart),
        )
        .toList();
  }

  List<SchoolEvent> get eventsForSelectedDate {
    final selectedDay = DateTime(
      selectedDate.year,
      selectedDate.month,
      selectedDate.day,
    );
    return events.where((event) {
      final startDay = DateTime(
        event.date.year,
        event.date.month,
        event.date.day,
      );
      final endDay = DateTime(
        event.endDate.year,
        event.endDate.month,
        event.endDate.day,
      );
      return !selectedDay.isBefore(startDay) && !selectedDay.isAfter(endDay);
    }).toList();
  }

  List<SchoolEvent> get upcomingEvents {
    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);
    return events.where((event) {
      final endDate = DateTime(
        event.endDate.year,
        event.endDate.month,
        event.endDate.day,
      );
      return !endDate.isBefore(todayDate);
    }).toList()..sort((a, b) => a.date.compareTo(b.date));
  }

  bool hasEventOn(DateTime date) => events.any(
    (event) =>
        !date.isBefore(
          DateTime(event.date.year, event.date.month, event.date.day),
        ) &&
        !date.isAfter(
          DateTime(event.endDate.year, event.endDate.month, event.endDate.day),
        ),
  );

  Future<bool> loadEvents() async {
    final client = _client;
    if (client == null) return true;

    isLoading = true;
    errorMessage = null;
    _notifyListeners();
    try {
      final response = await client.rpc('get_school_calendar_events');
      if (response is! List) {
        throw const FormatException('The calendar event list is invalid.');
      }
      events = response.map((row) {
        if (row is! Map<String, dynamic>) {
          throw const FormatException('A calendar event is invalid.');
        }
        return SchoolEvent.fromJson(row);
      }).toList();
      return true;
    } on PostgrestException catch (error) {
      errorMessage = 'Unable to load school events: ${error.message}';
    } on FormatException catch (error) {
      errorMessage = 'Unable to read school events: ${error.message}';
    } on Exception catch (error) {
      errorMessage = 'Unable to load school events: $error';
    } finally {
      isLoading = false;
      _notifyListeners();
    }
    return false;
  }

  void showPreviousMonth() {
    visibleMonth = DateTime(visibleMonth.year, visibleMonth.month - 1);
    _keepSelectedDayInVisibleMonth();
    _notifyListeners();
  }

  void showNextMonth() {
    visibleMonth = DateTime(visibleMonth.year, visibleMonth.month + 1);
    _keepSelectedDayInVisibleMonth();
    _notifyListeners();
  }

  void selectDate(DateTime date) {
    selectedDate = date;
    _notifyListeners();
  }

  void selectEventDate(DateTime date) {
    visibleMonth = DateTime(date.year, date.month);
    selectedDate = DateTime(date.year, date.month, date.day);
    _notifyListeners();
  }

  void _keepSelectedDayInVisibleMonth() {
    final lastDay = DateTime(visibleMonth.year, visibleMonth.month + 1, 0).day;
    selectedDate = DateTime(
      visibleMonth.year,
      visibleMonth.month,
      selectedDate.day.clamp(1, lastDay),
    );
  }
}
