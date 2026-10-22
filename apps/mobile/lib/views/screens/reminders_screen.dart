import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/school_theme.dart';
import '../../models/school_models.dart';
import '../../viewmodels/calendar_view_model.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({
    required this.onBack,
    required this.onViewCalendar,
    this.client,
    super.key,
  });

  final VoidCallback onBack;
  final VoidCallback onViewCalendar;
  final SupabaseClient? client;

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  late final CalendarViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = CalendarViewModel(client: widget.client)..loadEvents();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (context, _) {
        final reminders = _viewModel.upcomingEvents;
        return SafeArea(
          child: Column(
            children: [
              AppBar(
                title: const Text('Reminders'),
                leading: IconButton(
                  tooltip: 'Back',
                  onPressed: widget.onBack,
                  icon: const Icon(Icons.arrow_back),
                ),
                actions: [
                  IconButton(
                    tooltip: 'Refresh reminders',
                    onPressed: _viewModel.isLoading
                        ? null
                        : _viewModel.loadEvents,
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(14, 14, 14, 24),
                  children: [
                    Text(
                      'Upcoming Reminders (${reminders.length})',
                      style: const TextStyle(
                        color: SchoolTheme.darkGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 12),
                    if (_viewModel.isLoading)
                      const Padding(
                        padding: EdgeInsets.all(28),
                        child: Center(child: CircularProgressIndicator()),
                      )
                    else if (_viewModel.errorMessage != null)
                      _LoadError(
                        message: _viewModel.errorMessage!,
                        onRetry: () {
                          _viewModel.loadEvents();
                        },
                      )
                    else if (reminders.isEmpty)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'There are no upcoming school reminders.',
                          style: TextStyle(color: SchoolTheme.muted),
                        ),
                      )
                    else
                      for (final reminder in reminders) ...[
                        _ReminderCard(reminder: reminder),
                        const SizedBox(height: 10),
                      ],
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 48,
                      child: FilledButton(
                        onPressed: widget.onViewCalendar,
                        child: const Text('View school calendar'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ReminderCard extends StatelessWidget {
  const _ReminderCard({required this.reminder});

  final SchoolEvent reminder;

  @override
  Widget build(BuildContext context) {
    final date = reminder.date;
    final color = Color(reminder.colorValue);
    final dateText =
        '${date.day.toString().padLeft(2, '0')} '
        '${_month(date.month)} ${date.year}';
    final dateRange =
        reminder.endDate.year == date.year &&
            reminder.endDate.month == date.month &&
            reminder.endDate.day == date.day
        ? dateText
        : '$dateText - ${reminder.endDate.day.toString().padLeft(2, '0')} '
              '${_month(reminder.endDate.month)} ${reminder.endDate.year}';

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE2E7E3)),
        borderRadius: BorderRadius.circular(11),
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(width: 4, color: color),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reminder.kind == 'yearplan' ? 'YEAR PLAN' : 'UPCOMING',
                      style: TextStyle(
                        color: color,
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      reminder.title,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    if (reminder.description.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        reminder.description,
                        style: const TextStyle(
                          color: SchoolTheme.muted,
                          fontSize: 12,
                        ),
                      ),
                    ],
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.schedule, size: 14),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            reminder.time.isEmpty
                                ? dateRange
                                : '$dateRange · ${reminder.time}',
                            style: const TextStyle(
                              color: SchoolTheme.muted,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (reminder.location.isNotEmpty) ...[
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined, size: 14),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              reminder.location,
                              style: const TextStyle(
                                color: SchoolTheme.muted,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadError extends StatelessWidget {
  const _LoadError({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          message,
          style: TextStyle(color: Theme.of(context).colorScheme.error),
        ),
        TextButton.icon(
          onPressed: onRetry,
          icon: const Icon(Icons.refresh),
          label: const Text('Retry'),
        ),
      ],
    );
  }
}

String _month(int month) => const [
  'Jan',
  'Feb',
  'Mar',
  'Apr',
  'May',
  'Jun',
  'Jul',
  'Aug',
  'Sep',
  'Oct',
  'Nov',
  'Dec',
][month - 1];
