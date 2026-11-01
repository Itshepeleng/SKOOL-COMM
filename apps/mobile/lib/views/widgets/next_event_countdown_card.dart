
import 'dart:async';
import 'dart:ui' show FontFeature;

import 'package:flutter/material.dart';

import '../../models/school_models.dart';

class SkoolColors {
  static const green = Color(0xFF1B5E37);
  static const greenDeep = Color(0xFF123F26);
  static const orange = Color(0xFFE87722);
  static const white = Colors.white;
}

class NextEventCountdownCard extends StatefulWidget {
  final String appName;
  final String schoolName;
  final SchoolEvent? event;
  final VoidCallback? onViewReminder;
  final VoidCallback? onEventStarted;

  const NextEventCountdownCard({
    super.key,
    required this.event,
    this.appName = 'Skool-Comm',
    this.schoolName = 'Wilgehof Primary School',
    this.onViewReminder,
    this.onEventStarted,
  });

  @override
  State<NextEventCountdownCard> createState() =>
      _NextEventCountdownCardState();
}

class _NextEventCountdownCardState
    extends State<NextEventCountdownCard> {
  Timer? _timer;
  Duration _remaining = Duration.zero;
  bool _startedNotified = false;

  @override
  void initState() {
    super.initState();
    _tick();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => _tick(),
    );
  }

  @override
  void didUpdateWidget(covariant NextEventCountdownCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.event?.id != widget.event?.id ||
        oldWidget.event?.date != widget.event?.date) {
      _startedNotified = false;
      _tick();
    }
  }

  void _tick() {
    final event = widget.event;

    if (event == null) {
      if (mounted && _remaining != Duration.zero) {
        setState(() => _remaining = Duration.zero);
      }
      return;
    }

    final difference = event.date.difference(DateTime.now());

    if (difference <= Duration.zero) {
      if (!_startedNotified) {
        _startedNotified = true;
        widget.onEventStarted?.call();
      }

      if (mounted && _remaining != Duration.zero) {
        setState(() => _remaining = Duration.zero);
      }
      return;
    }

    if (mounted) {
      setState(() => _remaining = difference);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  static const _days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  static const _months = [
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

  String _two(int value) => value.toString().padLeft(2, '0');

  @override
  Widget build(BuildContext context) {
    final event = widget.event;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF124724),
            SkoolColors.green,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: SkoolColors.green.withValues(alpha: 0.13),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          const SizedBox(height: 18),
          const Divider(color: Colors.white24, height: 1),
          const SizedBox(height: 18),
          if (event == null)
            _emptyState()
          else
            _eventBody(event),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Icon(
            Icons.school_rounded,
            color: SkoolColors.white,
            size: 29,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.appName,
                style: const TextStyle(
                  color: SkoolColors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 3),
              Text(
                widget.schoolName,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Icons.notifications_none_rounded,
          color: SkoolColors.white,
          size: 26,
        ),
      ],
    );
  }

  Widget _emptyState() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.event_available_rounded,
            color: SkoolColors.orange,
            size: 38,
          ),
          SizedBox(height: 14),
          Text(
            "You're all caught up!",
            style: TextStyle(
              color: SkoolColors.white,
              fontSize: 22,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 7),
          Text(
            'There are no upcoming school events. '
            'New reminders will appear here.',
            style: TextStyle(
              color: Colors.white70,
              height: 1.5,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget _eventBody(SchoolEvent event) {
    final started = _remaining == Duration.zero;
    final days = _remaining.inDays;
    final hours = _remaining.inHours % 24;
    final minutes = _remaining.inMinutes % 60;
    final seconds = _remaining.inSeconds % 60;
    final date = event.date;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'UP NEXT AT YOUR SCHOOL',
          style: TextStyle(
            color: SkoolColors.orange,
            fontSize: 12,
            letterSpacing: 1.1,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          event.title,
          style: const TextStyle(
            color: SkoolColors.white,
            fontSize: 25,
            height: 1.2,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          event.location.isEmpty
              ? 'Wilgehof Primary School'
              : event.location,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 18),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: 17,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: SkoolColors.greenDeep,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.07),
            ),
          ),
          child: started
              ? const Center(
                  child: Text(
                    'Starting now',
                    style: TextStyle(
                      color: SkoolColors.orange,
                      fontSize: 23,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                )
              : Column(
                  children: [
                    const Text(
                      'TIME REMAINING',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 10,
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        _unit(_two(days), 'DAYS'),
                        _unit(_two(hours), 'HOURS'),
                        _unit(_two(minutes), 'MINS'),
                        _unit(
                          _two(seconds),
                          'SECS',
                          accent: true,
                        ),
                      ],
                    ),
                  ],
                ),
        ),
        const SizedBox(height: 19),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.10),
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Icon(
                Icons.calendar_month_rounded,
                color: SkoolColors.orange,
                size: 23,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${_days[date.weekday - 1]}, '
                    '${date.day} ${_months[date.month - 1]} '
                    '${date.year}',
                    style: const TextStyle(
                      color: SkoolColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${_two(date.hour)}:${_two(date.minute)}'
                    '${event.location.isEmpty ? '' : ' · ${event.location}'}',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 19),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: widget.onViewReminder,
            style: ElevatedButton.styleFrom(
              backgroundColor: SkoolColors.orange,
              foregroundColor: SkoolColors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View reminder',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward_rounded, size: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _unit(
    String value,
    String label, {
    bool accent = false,
  }) {
    return Expanded(
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              value,
              style: TextStyle(
                color: accent ? SkoolColors.orange : SkoolColors.white,
                fontSize: 29,
                fontWeight: FontWeight.w800,
                fontFeatures: const [
                  FontFeature.tabularFigures(),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 9,
              letterSpacing: 0.7,
            ),
          ),
        ],
      ),
    );
  }
}
