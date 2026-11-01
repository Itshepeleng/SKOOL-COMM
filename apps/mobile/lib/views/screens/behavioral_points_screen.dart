import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/learner_profile.dart';
import '../../models/school_models.dart';
import '../../viewmodels/dashboard_view_model.dart';
import '../widgets/school_loading_screen.dart';

const Color _demeritRed = Color(0xFFE5334B);
const Color _cardBorder = Color(0xFFE0E7E2);

const Map<int, String> _levelNames = {
  1: 'Enforcing reprimand',
  2: 'Infringement',
  3: 'Serious offence',
  4: 'Very serious offence',
  5: 'Criminal / serious violation',
};

/// "Level 2 - Infringement". The level is the first digit of the offence
/// code (101 to 509) that is inside the record's detail text.
String _levelLabel(String detail) {
  final match = RegExp(r'\b([1-5])\d{2}\b').firstMatch(detail);
  if (match == null) return detail;
  final level = int.parse(match.group(1)!);
  return 'Level $level - ${_levelNames[level]}';
}

String _levelInfo(PointRecord record) {
  return 'This offence resulted in ${record.points.abs()} points being '
      'deducted from the learner\'s record.';
}

/// South African school terms (approximate, by month).
String _termLabel(DateTime date) {
  final term = date.month <= 3
      ? 1
      : date.month <= 6
      ? 2
      : date.month <= 9
      ? 3
      : 4;
  return 'Term $term, ${date.year}';
}

/// "grade 4" + "4 A" becomes "Grade 4A".
String _classLabel(String grade, String className) {
  final g = grade.trim();
  final c = className.trim();
  final number = RegExp(r'\d+').firstMatch(g)?.group(0);
  final letters = RegExp(r'[A-Za-z]+$').firstMatch(c)?.group(0);
  if (number != null && letters != null) {
    return 'Grade $number${letters.toUpperCase()}';
  }
  return '$g $c'.trim();
}

String _initial(String name) {
  final trimmed = name.trim();
  return trimmed.isEmpty ? '?' : trimmed.substring(0, 1).toUpperCase();
}

int _deductionTotal(Iterable<PointRecord> list) =>
    list.where((r) => r.points < 0).fold<int>(0, (sum, r) => sum - r.points);

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

// ---------------------------------------------------------------------------
// Screen (same constructor as before)
// ---------------------------------------------------------------------------

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

// ---------------------------------------------------------------------------
// List screen
// ---------------------------------------------------------------------------

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
    final deductionRecords = records
        .where((record) => record.points < 0)
        .toList();

    return SafeArea(
      // top: false lets the green app bar reach the top of the screen
      top: false,
      child: Column(
        children: [
          AppBar(
            backgroundColor: SchoolTheme.green,
            foregroundColor: Colors.white,
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
                _LearnerHeader(
                  learners: children,
                  selected: selectedChild,
                  onSelect: onSelectChild,
                ),
                if (isLoading)
                  const Padding(
                    padding: EdgeInsets.all(18),
                    child: SchoolLoadingIndicator(
                      message: 'Loading behaviour records...',
                    ),
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
                  const SizedBox(height: 14),
                  if (!isLoading && errorMessage == null) ...[
                    _DeductionSummaryCard(
                      total: _deductionTotal(deductionRecords),
                      recordCount: deductionRecords.length,
                    ),
                    const SizedBox(height: 14),
                  ],
                  for (final record in deductionRecords) ...[
                    _PointCard(
                      record: record,
                      onTap: () => viewModel.selectPoint(record),
                    ),
                    const SizedBox(height: 10),
                  ],
                  if (!isLoading &&
                      errorMessage == null &&
                      deductionRecords.isEmpty)
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: SchoolTheme.paleGreen,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: SchoolTheme.green,
                            size: 32,
                          ),
                          SizedBox(height: 8),
                          Text(
                            'No behaviour records yet.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Any recorded behaviour offences will appear here.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: SchoolTheme.muted),
                          ),
                        ],
                      ),
                    ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DeductionSummaryCard extends StatelessWidget {
  const _DeductionSummaryCard({required this.total, required this.recordCount});

  final int total;
  final int recordCount;

  @override
  Widget build(BuildContext context) {
    final label = recordCount == 1
        ? '1 offence recorded'
        : '$recordCount offences recorded';
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.78),
        border: Border.all(color: _cardBorder),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.remove_circle_outline, color: _demeritRed, size: 30),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Points deducted',
                  style: TextStyle(
                    color: SchoolTheme.darkGreen,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  label,
                  style: const TextStyle(
                    color: SchoolTheme.muted,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '$total',
            style: const TextStyle(
              color: _demeritRed,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _LearnerHeader extends StatelessWidget {
  const _LearnerHeader({
    required this.learners,
    required this.selected,
    required this.onSelect,
  });

  final List<LearnerProfile> learners;
  final LearnerProfile? selected;
  final ValueChanged<LearnerProfile> onSelect;

  @override
  Widget build(BuildContext context) {
    final child = selected;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: SchoolTheme.paleOrange,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            child: Text(
              child == null ? '?' : _initial(child.fullName),
              style: const TextStyle(
                color: SchoolTheme.green,
                fontWeight: FontWeight.w800,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: child == null
                ? const Text('No linked learner profiles.')
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        child.fullName,
                        style: const TextStyle(
                          color: SchoolTheme.darkGreen,
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        '${_classLabel('${child.grade}', '${child.className}')}'
                        ' · ${_termLabel(DateTime.now())}',
                        style: const TextStyle(
                          color: SchoolTheme.muted,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
          ),
          if (learners.length > 1)
            PopupMenuButton<LearnerProfile>(
              tooltip: 'Change learner',
              icon: const Icon(Icons.unfold_more, color: SchoolTheme.green),
              onSelected: onSelect,
              itemBuilder: (context) => [
                for (final learner in learners)
                  if (learner.learnerId != null)
                    PopupMenuItem(
                      value: learner,
                      child: Text(learner.fullName),
                    ),
              ],
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
    final date = record.date;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: _cardBorder),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left: icon with the points under it
            SizedBox(
              width: 48,
              child: Column(
                children: [
                  Icon(Icons.remove_circle, color: _demeritRed, size: 26),
                  const SizedBox(height: 4),
                  Text(
                    '${record.points.abs()}',
                    style: const TextStyle(
                      color: _demeritRed,
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                  const Text(
                    'deducted',
                    style: TextStyle(color: SchoolTheme.muted, fontSize: 8),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Middle: date, offence, level
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
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _levelLabel(record.detail),
                    style: const TextStyle(
                      color: SchoolTheme.muted,
                      fontSize: 11,
                    ),
                  ),
                  if (record.teacherNote.trim().isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      record.teacherNote.trim(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: SchoolTheme.muted,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Right: teacher initials and arrow
            CircleAvatar(
              radius: 14,
              backgroundColor: SchoolTheme.paleGreen,
              child: Text(
                record.teacherInitials,
                style: const TextStyle(fontSize: 9),
              ),
            ),
            const Icon(Icons.chevron_right, color: SchoolTheme.muted),
          ],
        ),
      ),
    );
  }
}

class _PointDetails extends StatelessWidget {
  const _PointDetails({required this.record, required this.onBack});

  final PointRecord record;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final date = record.date;

    return SafeArea(
      top: false,
      child: Column(
        children: [
          AppBar(
            backgroundColor: SchoolTheme.green,
            foregroundColor: Colors.white,
            title: const Text('Behaviour Record'),
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
                    border: Border.all(color: _cardBorder),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.remove_circle,
                            color: _demeritRed,
                            size: 32,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${record.points.abs()} points deducted',
                            style: const TextStyle(
                              color: _demeritRed,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
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
                        text: record.teacherNote.trim().isEmpty
                            ? 'No note was provided.'
                            : record.teacherNote.trim(),
                      ),
                      const SizedBox(height: 14),
                      Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: _cardBorder),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: SchoolTheme.paleGreen,
                            backgroundImage:
                                record.teacherName == 'Ms L. Mokoena'
                                ? const AssetImage(
                                    'assets/images/mrs_mokoena_profile.jpg',
                                  )
                                : null,
                            child: record.teacherName == 'Ms L. Mokoena'
                                ? null
                                : Text(record.teacherInitials),
                          ),
                          title: Text(
                            record.teacherName,
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          subtitle: const Text('Teacher'),
                        ),
                      ),
                      const SizedBox(height: 14),
                      _InfoPanel(
                        icon: Icons.info_outline,
                        title: 'Offence details',
                        text: _levelInfo(record),
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
