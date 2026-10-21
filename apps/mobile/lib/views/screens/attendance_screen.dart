import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/attendance_view_model.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({
    super.key,
    this.studentName = 'Thabo Mokoena',
    this.grade = 'Grade 5B',
  });

  final String studentName;
  final String grade;

  static const _absences = [
    ('12 Aug 2026', 'Sick'),
    ('03 Sep 2026', 'Family'),
    ('15 Sep 2026', 'Sick'),
    ('22 Sep 2026', 'Unknown'),
  ];

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late final AttendanceViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = AttendanceViewModel(
      studentName: widget.studentName,
      grade: widget.grade,
    );
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
      builder: (context, _) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AppBar(
                title: const Text('Attendance'),
                leading: IconButton(
                  tooltip: 'Back',
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Text(
                      widget.studentName,
                      style: TextStyle(
                        color: SchoolTheme.darkGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      widget.grade,
                      style: TextStyle(color: SchoolTheme.muted),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE2E7E3)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            runSpacing: 4,
                            children: [
                              Text(
                                'Term 3 Summary',
                                style: TextStyle(
                                  color: SchoolTheme.darkGreen,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Chip(
                                label: Text('92% Attendance'),
                                visualDensity: VisualDensity.compact,
                                backgroundColor: SchoolTheme.paleGreen,
                                side: BorderSide.none,
                              ),
                            ],
                          ),
                          SizedBox(height: 14),
                          Row(
                            children: [
                              Expanded(
                                child: _AttendanceMetric(
                                  label: 'Days Present',
                                  value: '48 / 52',
                                ),
                              ),
                              Expanded(
                                child: _AttendanceMetric(
                                  label: 'Days Absent',
                                  value: '4',
                                  valueColor: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24, bottom: 9),
                      child: Text(
                        'Weekly Summary Report',
                        style: TextStyle(
                          color: SchoolTheme.darkGreen,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    _WeeklySummaryCard(viewModel: _viewModel),
                    const Padding(
                      padding: EdgeInsets.only(top: 24, bottom: 9),
                      child: Text(
                        'Recent Absences',
                        style: TextStyle(
                          color: SchoolTheme.darkGreen,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    for (final absence in AttendanceScreen._absences)
                      Card(
                        elevation: 0,
                        margin: const EdgeInsets.only(bottom: 8),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Color(0xFFE2E7E3)),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: ListTile(
                          dense: true,
                          leading: const Icon(
                            Icons.calendar_month_outlined,
                            color: SchoolTheme.orange,
                          ),
                          title: Text(absence.$1),
                          trailing: Chip(
                            label: Text(absence.$2),
                            visualDensity: VisualDensity.compact,
                            backgroundColor: SchoolTheme.paleOrange,
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                    const SizedBox(height: 20),
                    FilledButton.icon(
                      onPressed: _viewModel.isDownloading
                          ? null
                          : _downloadWeeklySummary,
                      icon: _viewModel.isDownloading
                          ? const SizedBox.square(
                              dimension: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.download_outlined),
                      label: Text(
                        _viewModel.isDownloading
                            ? 'Preparing PDF...'
                            : 'Download weekly summary (PDF)',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _downloadWeeklySummary() async {
    final saved = await _viewModel.downloadWeeklySummary();
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          saved
              ? 'Weekly attendance summary PDF downloaded.'
              : _viewModel.wasCancelled
              ? 'PDF save cancelled.'
              : _viewModel.errorMessage ?? 'Unable to download the PDF.',
        ),
      ),
    );
  }
}

class _WeeklySummaryCard extends StatelessWidget {
  const _WeeklySummaryCard({required this.viewModel});

  final AttendanceViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: SchoolTheme.paleGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            viewModel.weekRange,
            style: const TextStyle(
              color: SchoolTheme.darkGreen,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${viewModel.presentDays}/${viewModel.weeklyAttendance.length} days present · '
            '${viewModel.absentDays} absent · ${viewModel.attendancePercent}%',
            style: const TextStyle(color: SchoolTheme.ink),
          ),
          const SizedBox(height: 4),
          const Text(
            'Sample attendance data',
            style: TextStyle(color: SchoolTheme.muted, fontSize: 11),
          ),
          const SizedBox(height: 8),
          for (final day in viewModel.weeklyAttendance)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      '${day.weekdayLabel} · ${day.dateLabel}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    day.status,
                    style: TextStyle(
                      color: day.status == 'Absent'
                          ? Colors.red.shade700
                          : SchoolTheme.darkGreen,
                      fontWeight: FontWeight.w600,
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

class _AttendanceMetric extends StatelessWidget {
  const _AttendanceMetric({
    required this.label,
    required this.value,
    this.valueColor = SchoolTheme.ink,
  });

  final String label;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: SchoolTheme.muted)),
        const SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: valueColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
