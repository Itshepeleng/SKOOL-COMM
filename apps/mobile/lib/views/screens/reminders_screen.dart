import 'package:flutter/material.dart';

import '../../app/school_theme.dart';

class RemindersScreen extends StatelessWidget {
  const RemindersScreen({required this.onViewCalendar, super.key});

  final VoidCallback onViewCalendar;

  static const _reminders = [
    _Reminder(
      dateLabel: 'TOMORROW',
      title: 'Parent-Teacher Meeting',
      date: '25 Sep 2026 · 14:00',
      location: 'School Hall',
      color: Color(0xFFE64B58),
    ),
    _Reminder(
      dateLabel: '3 DAYS AWAY',
      title: 'Sports Day',
      date: '28 Sep 2026 · 08:00',
      location: 'School Fields',
      color: SchoolTheme.orange,
    ),
    _Reminder(
      dateLabel: 'NEXT WEEK',
      title: 'School Closes Early',
      date: '02 Oct 2026 · 12:00',
      location: 'School Grounds',
      color: SchoolTheme.green,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(title: const Text('Reminders')),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 24),
              children: [
                const Text(
                  'Upcoming Reminders (3)',
                  style: TextStyle(
                    color: SchoolTheme.darkGreen,
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 12),
                for (final reminder in _reminders) ...[
                  _ReminderCard(reminder: reminder),
                  const SizedBox(height: 10),
                ],
                const SizedBox(height: 32),
                SizedBox(
                  height: 48,
                  child: FilledButton(
                    onPressed: onViewCalendar,
                    child: const Text('View school calendar'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Reminder {
  const _Reminder({
    required this.dateLabel,
    required this.title,
    required this.date,
    required this.location,
    required this.color,
  });

  final String dateLabel;
  final String title;
  final String date;
  final String location;
  final Color color;
}

class _ReminderCard extends StatelessWidget {
  const _ReminderCard({required this.reminder});

  final _Reminder reminder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE2E7E3)),
        borderRadius: BorderRadius.circular(11),
      ),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(width: 4, color: reminder.color),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reminder.dateLabel,
                      style: TextStyle(
                        color: reminder.color,
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      reminder.title,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.schedule, size: 14),
                        const SizedBox(width: 5),
                        Text(
                          reminder.date,
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined, size: 14),
                        const SizedBox(width: 5),
                        Text(
                          reminder.location,
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              tooltip: 'Reminder options',
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Reminder options will be available soon.'),
                ),
              ),
              icon: const Icon(Icons.more_horiz, color: SchoolTheme.muted),
            ),
          ],
        ),
      ),
    );
  }
}
