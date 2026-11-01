import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/school_theme.dart';
import '../../models/school_models.dart';
import '../../viewmodels/calendar_view_model.dart';
import '../widgets/glass_widget.dart';

const Color _orange = Color(0xFFE8833A);
const Color _orangeBg = Color(0xFFFFEEDD);
const Color _cellBorder = Color(0xFFE0E7E2);

const List<String> _months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December',
];

const List<String> _weekdays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

bool _sameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;

class CalendarEvent {
  const CalendarEvent({
    required this.title,
    required this.date,
    this.endDate,
    this.description = '',
    this.time = '',
    this.location = '',
    this.isPersonal = false,
    this.highlight = false,
  });

  final String title;
  final DateTime date;
  final DateTime? endDate;
  final String description;
  final String time;
  final String location;
  final bool isPersonal;
  final bool highlight;
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({
    super.key,
    this.client,
    this.initialMonth,
    this.onSelectTab,
  });

  final SupabaseClient? client;
  final DateTime? initialMonth;
  final ValueChanged<int>? onSelectTab;

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late final CalendarViewModel _viewModel;
  late DateTime _visibleMonth;
  late DateTime _selectedDate;

  final List<CalendarEvent> _personalReminders = [];

  @override
  void initState() {
    super.initState();

    final now = DateTime.now();
    final initialMonth = widget.initialMonth ?? now;

    _viewModel =
        CalendarViewModel(client: widget.client, initialMonth: initialMonth)
          ..addListener(_onCalendarChanged)
          ..loadEvents();
    _visibleMonth = DateTime(initialMonth.year, initialMonth.month);
    _selectedDate =
        now.year == initialMonth.year && now.month == initialMonth.month
        ? DateTime(now.year, now.month, now.day)
        : _visibleMonth;
  }

  @override
  void dispose() {
    _viewModel
      ..removeListener(_onCalendarChanged)
      ..dispose();
    super.dispose();
  }

  void _onCalendarChanged() {
    if (mounted) setState(() {});
  }

  List<CalendarEvent> get _allEvents => [
    ..._viewModel.events.map(_fromSchoolEvent),
    ..._personalReminders,
  ];

  CalendarEvent _fromSchoolEvent(SchoolEvent event) => CalendarEvent(
    title: event.title,
    date: event.date,
    endDate: event.endDate,
    description: event.description,
    time: event.time,
    location: event.location,
  );

  List<CalendarEvent> _eventsOn(DateTime date) {
    return _allEvents.where((event) {
      final start = DateTime(event.date.year, event.date.month, event.date.day);
      final lastDate = event.endDate ?? event.date;
      final end = DateTime(lastDate.year, lastDate.month, lastDate.day);
      final day = DateTime(date.year, date.month, date.day);
      return !day.isBefore(start) && !day.isAfter(end);
    }).toList();
  }

  List<CalendarEvent> get _upcomingEvents {
    final today = DateTime.now();
    final todayDate = DateTime(today.year, today.month, today.day);

    final events = _allEvents.where((event) {
      final lastDate = event.endDate ?? event.date;
      final end = DateTime(lastDate.year, lastDate.month, lastDate.day);
      return !end.isBefore(todayDate);
    }).toList();

    events.sort((a, b) => a.date.compareTo(b.date));

    return events;
  }

  String _formatDate(DateTime date) {
    return '${date.day} ${_months[date.month - 1]} ${date.year}';
  }

  void _changeMonth(int amount) {
    setState(() {
      _visibleMonth = DateTime(
        _visibleMonth.year,
        _visibleMonth.month + amount,
      );
    });
    if (amount < 0) {
      _viewModel.showPreviousMonth();
    } else if (amount > 0) {
      _viewModel.showNextMonth();
    }
  }

  void _selectDate(DateTime date) {
    setState(() {
      _selectedDate = date;
      _visibleMonth = DateTime(date.year, date.month);
    });
    _viewModel.selectDate(date);

    _showSelectedDate();
  }

  void _showSelectedDate() {
    final events = _eventsOn(_selectedDate);

    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _formatDate(_selectedDate),
                style: const TextStyle(
                  color: SchoolTheme.darkGreen,
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 16),

              if (events.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(
                          Icons.event_available_outlined,
                          size: 42,
                          color: SchoolTheme.green,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'No reminders for this day',
                          style: TextStyle(
                            color: SchoolTheme.muted,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              else
                ...events.map(
                  (event) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundColor: event.isPersonal
                          ? _orangeBg
                          : SchoolTheme.paleGreen,
                      child: Icon(
                        event.isPersonal
                            ? Icons.person_outline
                            : Icons.school_outlined,
                        color: event.isPersonal ? _orange : SchoolTheme.green,
                      ),
                    ),
                    title: Text(
                      event.title,
                      style: const TextStyle(
                        color: SchoolTheme.darkGreen,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: Text(
                      event.time.isEmpty
                          ? event.isPersonal
                                ? 'Personal reminder'
                                : 'School event'
                          : event.time,
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.pop(sheetContext);
                      _showEventDetails(event);
                    },
                  ),
                ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(sheetContext);
                    _showAddReminderDialog(_selectedDate);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add reminder for this date'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: SchoolTheme.darkGreen,
                    side: const BorderSide(color: _cellBorder),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showEventDetails(CalendarEvent event) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.white,
      builder: (sheetContext) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 8, 22, 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.isPersonal ? 'PERSONAL REMINDER' : 'SCHOOL EVENT',
                style: TextStyle(
                  color: event.isPersonal ? _orange : SchoolTheme.green,
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                event.title,
                style: const TextStyle(
                  color: SchoolTheme.darkGreen,
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 18),
              _detailRow(
                Icons.calendar_today_outlined,
                event.endDate == null || _sameDay(event.date, event.endDate!)
                    ? _formatDate(event.date)
                    : '${_formatDate(event.date)} - ${_formatDate(event.endDate!)}',
              ),
              if (event.time.isNotEmpty) ...[
                const SizedBox(height: 14),
                _detailRow(Icons.access_time, event.time),
              ],
              if (event.location.isNotEmpty) ...[
                const SizedBox(height: 14),
                _detailRow(Icons.location_on_outlined, event.location),
              ],
              if (event.description.isNotEmpty) ...[
                const SizedBox(height: 18),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: SchoolTheme.darkGreen,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  event.description,
                  style: const TextStyle(color: SchoolTheme.muted, height: 1.5),
                ),
              ],
              if (event.isPersonal) ...[
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.pop(sheetContext);
                      _deleteReminder(event);
                    },
                    icon: const Icon(Icons.delete_outline),
                    label: const Text('Delete reminder'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.red.shade700,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailRow(IconData icon, String value) {
    return Row(
      children: [
        Icon(icon, color: SchoolTheme.green, size: 20),
        const SizedBox(width: 12),
        Expanded(child: Text(value)),
      ],
    );
  }

  Future<void> _showAddReminderDialog(DateTime date) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final timeController = TextEditingController();
    final locationController = TextEditingController();

    final formKey = GlobalKey<FormState>();

    final result = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: Colors.white,
        title: const Text(
          'Add personal reminder',
          style: TextStyle(
            color: SchoolTheme.darkGreen,
            fontWeight: FontWeight.w800,
          ),
        ),
        content: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _formatDate(date),
                  style: const TextStyle(
                    color: SchoolTheme.muted,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    labelText: 'Reminder title',
                    hintText: 'e.g. Buy school stationery',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Enter a reminder title';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: timeController,
                  decoration: const InputDecoration(
                    labelText: 'Time (optional)',
                    hintText: 'e.g. 14:00',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: locationController,
                  decoration: const InputDecoration(
                    labelText: 'Location (optional)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: descriptionController,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'Description (optional)',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: SchoolTheme.green),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                Navigator.pop(dialogContext, true);
              }
            },
            child: const Text('Save reminder'),
          ),
        ],
      ),
    );

    if (result == true && mounted) {
      setState(() {
        _personalReminders.add(
          CalendarEvent(
            title: titleController.text.trim(),
            date: date,
            time: timeController.text.trim(),
            location: locationController.text.trim(),
            description: descriptionController.text.trim(),
            isPersonal: true,
            highlight: true,
          ),
        );
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Personal reminder added')));
    }

    titleController.dispose();
    descriptionController.dispose();
    timeController.dispose();
    locationController.dispose();
  }

  void _deleteReminder(CalendarEvent event) {
    setState(() {
      _personalReminders.remove(event);
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Reminder deleted')));
  }

  Widget _buildCalendar() {
    final firstDay = DateTime(_visibleMonth.year, _visibleMonth.month, 1);

    final daysInMonth = DateTime(
      _visibleMonth.year,
      _visibleMonth.month + 1,
      0,
    ).day;

    final leadingDays = firstDay.weekday - 1;
    final totalCells = ((leadingDays + daysInMonth + 6) ~/ 7) * 7;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: _cellBorder),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => _changeMonth(-1),
                  icon: const Icon(Icons.chevron_left),
                  color: SchoolTheme.darkGreen,
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    '${_months[_visibleMonth.month - 1]} ${_visibleMonth.year}',
                    style: const TextStyle(
                      color: SchoolTheme.darkGreen,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => _changeMonth(1),
                  icon: const Icon(Icons.chevron_right),
                  color: SchoolTheme.darkGreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              for (final day in _weekdays)
                Expanded(
                  child: Center(
                    child: Text(
                      day,
                      style: const TextStyle(
                        color: SchoolTheme.muted,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 6),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: totalCells,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              crossAxisSpacing: 4,
              mainAxisSpacing: 5,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final date = DateTime(
                _visibleMonth.year,
                _visibleMonth.month,
                index - leadingDays + 1,
              );

              final isCurrentMonth = date.month == _visibleMonth.month;

              final isSelected = _sameDay(date, _selectedDate);

              final today = DateTime.now();
              final isToday = _sameDay(date, today);

              final events = _eventsOn(date);

              return InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () => _selectDate(date),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected
                        ? SchoolTheme.green
                        : isToday
                        ? SchoolTheme.paleGreen
                        : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: isSelected
                          ? SchoolTheme.green
                          : isToday
                          ? SchoolTheme.green
                          : _cellBorder,
                      width: isSelected || isToday ? 1.5 : 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${date.day}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: !isCurrentMonth
                              ? Colors.grey.shade400
                              : isSelected
                              ? Colors.white
                              : SchoolTheme.darkGreen,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (final event in events.take(3))
                            Container(
                              width: 5,
                              height: 5,
                              margin: const EdgeInsets.symmetric(horizontal: 1),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Colors.white
                                    : event.isPersonal
                                    ? _orange
                                    : SchoolTheme.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildUpcomingReminders() {
    final events = _upcomingEvents.take(5).toList();

    if (events.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: _cellBorder),
        ),
        child: Column(
          children: [
            Icon(
              Icons.event_note_outlined,
              size: 38,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 10),
            const Text(
              'No upcoming reminders',
              style: TextStyle(
                color: SchoolTheme.darkGreen,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Your reminders will appear here.',
              style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
            ),
          ],
        ),
      );
    }

    return Column(
      children: events.map((event) {
        final eventColor = event.isPersonal ? _orange : SchoolTheme.green;

        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () => _showEventDetails(event),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: _cellBorder),
              ),
              child: Row(
                children: [
                  Container(
                    width: 58,
                    height: 62,
                    decoration: BoxDecoration(
                      color: event.isPersonal
                          ? _orangeBg
                          : SchoolTheme.paleGreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          event.date.day.toString().padLeft(2, '0'),
                          style: TextStyle(
                            color: eventColor,
                            fontSize: 21,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          _months[event.date.month - 1]
                              .substring(0, 3)
                              .toUpperCase(),
                          style: TextStyle(
                            color: eventColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.title,
                          style: const TextStyle(
                            color: SchoolTheme.darkGreen,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          [
                                if (event.time.isNotEmpty) event.time,
                                if (event.location.isNotEmpty) event.location,
                              ].join(' · ').isEmpty
                              ? event.isPersonal
                                    ? 'Personal reminder'
                                    : 'School event'
                              : [
                                  if (event.time.isNotEmpty) event.time,
                                  if (event.location.isNotEmpty) event.location,
                                ].join(' · '),
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          event.isPersonal
                              ? 'PERSONAL REMINDER'
                              : 'SCHOOL EVENT',
                          style: TextStyle(
                            color: eventColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right, color: SchoolTheme.muted),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('School Calendar'),
        leading: IconButton(
          tooltip: 'Back',
          onPressed: () => Navigator.of(context).maybePop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Wilgehof Primary School',
                style: TextStyle(color: SchoolTheme.muted, fontSize: 14),
              ),
              const SizedBox(height: 16),

              _buildCalendar(),

              if (_viewModel.isLoading) ...[
                const SizedBox(height: 12),
                const LinearProgressIndicator(),
              ] else if (_viewModel.errorMessage != null) ...[
                const SizedBox(height: 12),
                Material(
                  color: const Color(0xFFFFF3E8),
                  borderRadius: BorderRadius.circular(12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _viewModel.errorMessage!,
                            style: const TextStyle(
                              color: SchoolTheme.darkGreen,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: _viewModel.loadEvents,
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],

              const SizedBox(height: 12),

              const Text(
                'Select a date to view its reminders and events.',
                style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
              ),

              const SizedBox(height: 28),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Upcoming reminders',
                    style: TextStyle(
                      color: SchoolTheme.darkGreen,
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () => _showAddReminderDialog(_selectedDate),
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('Add'),
                    style: TextButton.styleFrom(
                      foregroundColor: SchoolTheme.green,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              _buildUpcomingReminders(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GlassBottomNavigation(
        selectedIndex: 3,
        onSelected:
            widget.onSelectTab ?? (_) => Navigator.of(context).maybePop(),
      ),
    );
  }
}
