import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/dashboard_view_model.dart';

class BehavioralPointsScreen extends StatelessWidget {
  const BehavioralPointsScreen({required this.viewModel, super.key});

  final DashboardViewModel viewModel;

  static const _records = [
    _PointRecord(
      date: '30 Sep 2026 08:40',
      title: 'Disrupting class / not following instructions',
      detail: 'Level 2 · infringement',
      points: -10,
      initials: 'NP',
    ),
    _PointRecord(
      date: '16 Sep 2026 11:40',
      title: 'Late for class',
      detail: 'Level 2 · infringement',
      points: -10,
      initials: 'AT',
    ),
    _PointRecord(
      date: '12 Sep 2026 08:30',
      title: 'Fighting / physical aggression',
      detail: 'Level 2 · infringement',
      points: -10,
      initials: 'LM',
    ),
    _PointRecord(
      date: '05 Sep 2026 10:15',
      title: 'Lining a cellphone in class',
      detail: 'Level 2 · infringement',
      points: -10,
      initials: 'NP',
    ),
    _PointRecord(
      date: '02 Sep 2026 09:00',
      title: 'Helping a classmate',
      detail: 'Positive contribution',
      points: 10,
      initials: 'AT',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, _) {
        final records = _records.where((record) {
      return switch (viewModel.pointFilter) {
        PointFilter.all => true,
        PointFilter.positive => record.points > 0,
        PointFilter.negative => record.points < 0,
      };
    }).toList();

    return SafeArea(
      child: Column(
        children: [
          AppBar(title: const Text('Behavioural points')),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: SchoolTheme.paleOrange,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          color: SchoolTheme.green,
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Learner profile',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Grade 5A  ·  Term 3, 2026',
                            style: TextStyle(
                              color: SchoolTheme.muted,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SegmentedButton<PointFilter>(
                  segments: const [
                    ButtonSegment(value: PointFilter.all, label: Text('All')),
                    ButtonSegment(
                      value: PointFilter.positive,
                      label: Text('Positive'),
                    ),
                    ButtonSegment(
                      value: PointFilter.negative,
                      label: Text('Negative'),
                    ),
                  ],
                  selected: {viewModel.pointFilter},
                  onSelectionChanged: (selection) =>
                      viewModel.selectPointFilter(selection.first),
                ),
                const SizedBox(height: 14),
                for (final record in records) ...[
                  _PointCard(record: record),
                  const SizedBox(height: 10),
                ],
                if (records.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Text(
                      'No points in this category yet.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: FilledButton.tonalIcon(
                    onPressed: () => _showSummary(context),
                    icon: const Icon(Icons.summarize_outlined),
                    label: const Text('Summary'),
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

  static void _showSummary(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Points summary'),
        content: const Text(
          'Behavioural records shown here are sample prototype data.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

class _PointRecord {
  const _PointRecord({
    required this.date,
    required this.title,
    required this.detail,
    required this.points,
    required this.initials,
  });

  final String date;
  final String title;
  final String detail;
  final int points;
  final String initials;
}

class _PointCard extends StatelessWidget {
  const _PointCard({required this.record});

  final _PointRecord record;

  @override
  Widget build(BuildContext context) {
    final positive = record.points > 0;
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E7E2)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            positive ? Icons.add_circle : Icons.remove_circle,
            color: positive ? SchoolTheme.green : Colors.redAccent,
          ),
          const SizedBox(width: 9),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  record.date,
                  style: const TextStyle(
                    color: SchoolTheme.muted,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  record.title,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                Text(
                  record.detail,
                  style: const TextStyle(
                    color: SchoolTheme.muted,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Column(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: SchoolTheme.paleGreen,
                child: Text(
                  record.initials,
                  style: const TextStyle(fontSize: 9),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '${record.points > 0 ? '+' : ''}${record.points}',
                style: TextStyle(
                  color: positive ? SchoolTheme.green : Colors.redAccent,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
