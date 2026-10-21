import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/school_models.dart';
import '../../viewmodels/calendar_view_model.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late final CalendarViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = CalendarViewModel();
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
        final firstDay = DateTime(
          _viewModel.visibleMonth.year,
          _viewModel.visibleMonth.month,
        );
        final offset = firstDay.weekday % 7;
        final cells = List.generate(
          42,
          (index) =>
              DateTime(firstDay.year, firstDay.month, index - offset + 1),
        );
        final eventsForMonth = SchoolEvent.samples
            .where(
              (event) =>
                  event.date.year == firstDay.year &&
                  event.date.month == firstDay.month,
            )
            .toList();

        return Scaffold(
          appBar: AppBar(
            title: const Text('Year Plan'),
            leading: IconButton(
              tooltip: 'Back',
              onPressed: () => Navigator.of(context).maybePop(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: SafeArea(
            child: Material(
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(14, 12, 14, 20),
                children: [
                  Row(
                    children: [
                      IconButton(
                        tooltip: 'Previous month',
                        onPressed: _viewModel.showPreviousMonth,
                        icon: const Icon(
                          Icons.arrow_back,
                          color: SchoolTheme.green,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${_monthName(firstDay.month)} ${firstDay.year}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: SchoolTheme.darkGreen,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      IconButton(
                        tooltip: 'Next month',
                        onPressed: _viewModel.showNextMonth,
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: SchoolTheme.green,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Row(
                    children: [
                      _WeekdayLabel('M'),
                      _WeekdayLabel('T'),
                      _WeekdayLabel('W'),
                      _WeekdayLabel('T'),
                      _WeekdayLabel('F'),
                      _WeekdayLabel('S'),
                      _WeekdayLabel('S'),
                    ],
                  ),
                  const SizedBox(height: 6),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: cells.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 7,
                          childAspectRatio: 1.15,
                        ),
                    itemBuilder: (context, index) {
                      final date = cells[index];
                      final inMonth = date.month == firstDay.month;
                      final isSelected = DateUtils.isSameDay(
                        date,
                        _viewModel.selectedDate,
                      );
                      final hasEvent = SchoolEvent.samples.any(
                        (event) => DateUtils.isSameDay(event.date, date),
                      );
                      return InkWell(
                        customBorder: const CircleBorder(),
                        onTap: inMonth
                            ? () => _viewModel.selectDate(date)
                            : null,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 32,
                              height: 32,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? SchoolTheme.green
                                    : Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                '${date.day}',
                                style: TextStyle(
                                  color: !inMonth
                                      ? Colors.black26
                                      : isSelected
                                      ? Colors.white
                                      : SchoolTheme.ink,
                                  fontWeight: isSelected
                                      ? FontWeight.w800
                                      : FontWeight.w500,
                                ),
                              ),
                            ),
                            if (hasEvent)
                              Container(
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  color: SchoolTheme.orange,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Text(
                    DateUtils.isSameDay(
                          _viewModel.selectedDate,
                          DateTime(2026, 9, 20),
                        )
                        ? 'Upcoming Events'
                        : 'Events · ${_viewModel.selectedDate.day} '
                              '${_monthName(_viewModel.selectedDate.month)}',
                    style: const TextStyle(
                      color: SchoolTheme.darkGreen,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (eventsForMonth.isEmpty)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: Text(
                        'No events scheduled for this month.',
                        style: TextStyle(color: SchoolTheme.muted),
                      ),
                    ),
                  for (final event in eventsForMonth)
                    _EventRow(
                      event: event,
                      onTap: () => _viewModel.selectDate(event.date),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String _monthName(int month) => const [
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
  ][month - 1];
}

class _WeekdayLabel extends StatelessWidget {
  const _WeekdayLabel(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            color: SchoolTheme.muted,
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _EventRow extends StatelessWidget {
  const _EventRow({required this.event, required this.onTap});

  final SchoolEvent event;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = Color(event.colorValue);
    return Padding(
      padding: const EdgeInsets.only(bottom: 9),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(9),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 11),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE3E8E4)),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 50,
                  child: Text(
                    '${event.date.day.toString().padLeft(2, '0')} '
                    '${_shortMonth(event.date.month)}',
                    style: TextStyle(
                      color: color,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    event.title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  event.time,
                  style: const TextStyle(
                    color: SchoolTheme.muted,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _shortMonth(int month) => const [
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
}
