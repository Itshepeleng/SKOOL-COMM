import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/learner_profile.dart';
import '../../models/school_models.dart';
import '../../viewmodels/attendance_view_model.dart';
import '../../viewmodels/dashboard_view_model.dart';

class BehavioralPointsScreen extends StatelessWidget {
  const BehavioralPointsScreen({
    required this.viewModel,
    required this.onBack,
    required this.children,
    required this.selectedChild,
    required this.onSelectChild,
    required this.records,
    required this.isLoading,
    required this.errorMessage,
    super.key,
  });

  final DashboardViewModel viewModel;
  final VoidCallback onBack;
  final List<LearnerProfile> children;
  final LearnerProfile? selectedChild;
  final ValueChanged<LearnerProfile> onSelectChild;
  final List<PointRecord> records;
  final bool isLoading;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, _) {
        final selectedPoint = viewModel.selectedPoint;
        if (selectedPoint != null) {
          return _PointDetails(
            record: selectedPoint,
            onBack: viewModel.clearSelectedPoint,
          );
        }
        return _PointList(
          viewModel: viewModel,
          onBack: onBack,
          children: children,
          selectedChild: selectedChild,
          onSelectChild: onSelectChild,
          records: records,
          isLoading: isLoading,
          errorMessage: errorMessage,
        );
      },
    );
  }
}

class _PointList extends StatelessWidget {
  const _PointList({
    required this.viewModel,
    required this.onBack,
    required this.children,
    required this.selectedChild,
    required this.onSelectChild,
    required this.records,
    required this.isLoading,
    required this.errorMessage,
  });

  final DashboardViewModel viewModel;
  final VoidCallback onBack;
  final List<LearnerProfile> children;
  final LearnerProfile? selectedChild;
  final ValueChanged<LearnerProfile> onSelectChild;
  final List<PointRecord> records;
  final bool isLoading;
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    final weekStart = AttendanceViewModel.weekStartFor(DateTime.now());
    final weekEnd = weekStart.add(const Duration(days: 7));
    final weeklyRecords = records.where((record) {
      return !record.date.isBefore(weekStart) && record.date.isBefore(weekEnd);
    }).toList();
    final positive = weeklyRecords
        .where((record) => record.points > 0)
        .fold<int>(0, (sum, record) => sum + record.points);
    final negative = weeklyRecords
        .where((record) => record.points < 0)
        .fold<int>(0, (sum, record) => sum + record.points);

    final filteredRecords = records.where((record) {
      return switch (viewModel.pointFilter) {
        PointFilter.all => true,
        PointFilter.positive => record.points > 0,
        PointFilter.negative => record.points < 0,
      };
    }).toList();

    return SafeArea(
      child: Column(
        children: [
          AppBar(
            title: const Text('Behavioural points'),
            leading: IconButton(
              tooltip: 'Back to Home',
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back),
            ),
          ),
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
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, color: SchoolTheme.green),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: children.isEmpty
                            ? const Text('No linked learner profiles.')
                            : DropdownButton<int>(
                                isExpanded: true,
                                value: selectedChild?.learnerId,
                                hint: const Text('Select a learner'),
                                items: [
                                  for (final child in children)
                                    if (child.learnerId != null)
                                      DropdownMenuItem(
                                        value: child.learnerId,
                                        child: Text(
                                          '${child.fullName} · ${child.grade} ${child.className}',
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                ],
                                onChanged: (learnerId) {
                                  for (final child in children) {
                                    if (child.learnerId == learnerId) {
                                      onSelectChild(child);
                                      break;
                                    }
                                  }
                                },
                              ),
                      ),
                    ],
                  ),
                ),
                if (isLoading)
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                if (errorMessage != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                if (selectedChild == null)
                  const Padding(
                    padding: EdgeInsets.all(24),
                    child: Text(
                      'Link a learner profile to view behavioural points.',
                      textAlign: TextAlign.center,
                    ),
                  )
                else ...[
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: SchoolTheme.paleGreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Weekly Summary',
                          style: TextStyle(
                            color: SchoolTheme.darkGreen,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${AttendanceViewModel.formatDate(weekStart)} - '
                          '${AttendanceViewModel.formatDate(weekEnd.subtract(const Duration(days: 1)))}',
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: _WeeklyPointMetric(
                                label: 'Positive',
                                value: '+$positive',
                              ),
                            ),
                            Expanded(
                              child: _WeeklyPointMetric(
                                label: 'Negative',
                                value: '$negative',
                              ),
                            ),
                            Expanded(
                              child: _WeeklyPointMetric(
                                label: 'Net points',
                                value: '${positive + negative}',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          isLoading
                              ? 'Loading records...'
                              : weeklyRecords.isEmpty
                              ? 'No points recorded this week.'
                              : '${weeklyRecords.length} point record${weeklyRecords.length == 1 ? '' : 's'} this week.',
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 11,
                          ),
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
                  for (final record in filteredRecords) ...[
                    _PointCard(
                      record: record,
                      onTap: () => viewModel.selectPoint(record),
                    ),
                    const SizedBox(height: 10),
                  ],
                  if (!isLoading && filteredRecords.isEmpty)
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'No points recorded for this learner.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        tooltip: 'Download PDF summary',
                        onPressed: () => _showExportNotice(context),
                        icon: const Icon(
                          Icons.picture_as_pdf_outlined,
                          color: Colors.redAccent,
                        ),
                      ),
                      IconButton(
                        tooltip: 'Download spreadsheet summary',
                        onPressed: () => _showExportNotice(context),
                        icon: const Icon(
                          Icons.table_view_outlined,
                          color: SchoolTheme.green,
                        ),
                      ),
                      const Spacer(),
                      FilledButton(
                        onPressed: () => _showSummary(context, records),
                        child: const Text('Summary'),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSummary(BuildContext context, List<PointRecord> records) {
    final weekStart = AttendanceViewModel.weekStartFor(DateTime.now());
    final weekEnd = weekStart.add(const Duration(days: 7));
    final weeklyRecords = records.where((record) {
      return !record.date.isBefore(weekStart) && record.date.isBefore(weekEnd);
    });
    final positive = weeklyRecords
        .where((record) => record.points > 0)
        .fold<int>(0, (sum, record) => sum + record.points);
    final negative = weeklyRecords
        .where((record) => record.points < 0)
        .fold<int>(0, (sum, record) => sum + record.points);

    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Weekly points summary'),
        content: Text(
          '${AttendanceViewModel.formatDate(weekStart)} - '
          '${AttendanceViewModel.formatDate(weekEnd.subtract(const Duration(days: 1)))}\n\n'
          'Positive points: +$positive\n'
          'Negative points: $negative\n'
          'Net points: ${positive + negative}\n\n'
          '${weeklyRecords.length} record${weeklyRecords.length == 1 ? '' : 's'} for the selected week.',
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

  void _showExportNotice(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Reports will be available when points are connected.'),
      ),
    );
  }
}

class _WeeklyPointMetric extends StatelessWidget {
  const _WeeklyPointMetric({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(color: SchoolTheme.muted, fontSize: 11),
        ),
        const SizedBox(height: 3),
        Text(
          value,
          style: const TextStyle(
            color: SchoolTheme.darkGreen,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}

class _PointDetails extends StatelessWidget {
  const _PointDetails({required this.record, required this.onBack});

  final PointRecord record;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final positive = record.points > 0;
    final date = record.date;
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            title: const Text('Points Details'),
            leading: IconButton(
              tooltip: 'Back',
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE0E7E2)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            positive ? Icons.add_circle : Icons.remove_circle,
                            color: positive ? SchoolTheme.green : Colors.red,
                            size: 32,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${record.points > 0 ? '+' : ''}${record.points}',
                            style: TextStyle(
                              color: positive ? SchoolTheme.green : Colors.red,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Spacer(),
                          Chip(
                            label: Text(
                              positive ? 'Positive' : 'Level 2 Offence',
                              style: TextStyle(
                                color: positive
                                    ? SchoolTheme.green
                                    : Colors.red.shade700,
                                fontSize: 11,
                              ),
                            ),
                            backgroundColor: positive
                                ? SchoolTheme.paleGreen
                                : const Color(0xFFFFEEEE),
                            side: BorderSide.none,
                            visualDensity: VisualDensity.compact,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        record.title,
                        style: const TextStyle(
                          color: SchoolTheme.darkGreen,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.calendar_month_outlined, size: 18),
                          const SizedBox(width: 8),
                          Text(
                            '${date.day.toString().padLeft(2, '0')} '
                            '${_monthName(date.month)} ${date.year}',
                          ),
                          const SizedBox(width: 16),
                          const Icon(Icons.access_time, size: 18),
                          const SizedBox(width: 6),
                          Text(
                            '${date.hour.toString().padLeft(2, '0')}:'
                            '${date.minute.toString().padLeft(2, '0')}',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      _InfoPanel(
                        icon: Icons.notes,
                        title: "Teacher's note",
                        text: record.teacherNote,
                      ),
                      const SizedBox(height: 14),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFFE0E7E2)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: SchoolTheme.paleGreen,
                            child: Text(record.teacherInitials),
                          ),
                          title: Text(
                            record.teacherName,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          subtitle: const Text('Teacher'),
                          trailing: const Icon(Icons.chevron_right),
                        ),
                      ),
                      const SizedBox(height: 14),
                      _InfoPanel(
                        icon: Icons.info_outline,
                        title: record.detail,
                        text: positive
                            ? 'Positive behaviour is recognised as part of the learner points record.'
                            : 'Level 2 offences are more serious behavioural issues and may result in additional consequences.',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  height: 48,
                  child: FilledButton(
                    onPressed: onBack,
                    child: const Text('Back to Behavioural Points'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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

class _InfoPanel extends StatelessWidget {
  const _InfoPanel({
    required this.icon,
    required this.title,
    required this.text,
  });

  final IconData icon;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: SchoolTheme.paleGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: SchoolTheme.green, size: 19),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 6),
                Text(text, style: const TextStyle(height: 1.35)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PointCard extends StatelessWidget {
  const _PointCard({required this.record, required this.onTap});

  final PointRecord record;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final positive = record.points > 0;
    final date = record.date;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
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
                    '${date.day.toString().padLeft(2, '0')} '
                    '${_shortMonth(date.month)} ${date.year} '
                    '${date.hour.toString().padLeft(2, '0')}:'
                    '${date.minute.toString().padLeft(2, '0')}',
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
                    record.teacherInitials,
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
            const SizedBox(width: 3),
            const Icon(Icons.chevron_right, color: SchoolTheme.muted),
          ],
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
