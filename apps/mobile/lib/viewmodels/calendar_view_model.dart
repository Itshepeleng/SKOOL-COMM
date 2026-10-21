import 'package:flutter/foundation.dart';

import '../models/school_models.dart';

class CalendarViewModel extends ChangeNotifier {
  CalendarViewModel({DateTime? initialMonth})
    : visibleMonth = DateTime(
        (initialMonth ?? DateTime(2026, 9)).year,
        (initialMonth ?? DateTime(2026, 9)).month,
      ),
      selectedDate = DateTime(2026, 9, 20);

  DateTime visibleMonth;
  DateTime selectedDate;

  List<SchoolEvent> get selectedDateEvents => SchoolEvent.samples
      .where(
        (event) =>
            event.date.year == selectedDate.year &&
            event.date.month == selectedDate.month &&
            event.date.day == selectedDate.day,
      )
      .toList();

  void showPreviousMonth() {
    visibleMonth = DateTime(visibleMonth.year, visibleMonth.month - 1);
    _keepSelectedDayInVisibleMonth();
    notifyListeners();
  }

  void showNextMonth() {
    visibleMonth = DateTime(visibleMonth.year, visibleMonth.month + 1);
    _keepSelectedDayInVisibleMonth();
    notifyListeners();
  }

  void selectDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
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
