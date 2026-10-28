import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/learner_profile.dart';
import '../../models/learner_records.dart';
import '../../viewmodels/attendance_view_model.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({
    required this.child,
    required this.loadAttendance,
    super.key,
  });

  final LearnerProfile child;
  final Future<List<LearnerAttendanceRecord>> Function(int) loadAttendance;

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late final AttendanceViewModel _viewModel;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _viewModel = AttendanceViewModel(
      studentName: widget.child.fullName,
      grade: widget.child.gradeClassLabel,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadRecords());
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
                      widget.child.fullName,
                      style: TextStyle(
                        color: SchoolTheme.darkGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      widget.child.gradeClassLabel,
                      style: TextStyle(color: SchoolTheme.muted),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE2E7E3)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            alignment: WrapAlignment.spaceBetween,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            runSpacing: 4,
                            children: [
                              Text(
                                'Attendance Summary',
                                style: TextStyle(
                                  color: SchoolTheme.darkGreen,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Chip(
                                label: Text(
                                  '${_viewModel.attendancePercent}% Attendance',
                                ),
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
                                  value:
                                      '${_viewModel.presentDays} / ${_viewModel.totalDays}',
                                ),
                              ),
                              Expanded(
                                child: _AttendanceMetric(
                                  label: 'Days Absent',
                                  value: '${_viewModel.absentDays}',
                                  valueColor: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          if (_viewModel.allAttendance.isEmpty)
                            const Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Text(
                                'No attendance records yet.',
                                style: TextStyle(color: SchoolTheme.muted),
                              ),
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
                    if (_isLoading)
                      const Padding(
                        padding: EdgeInsets.all(18),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    if (_errorMessage != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _errorMessage!,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.error,
                              ),
                            ),
                            TextButton.icon(
                              onPressed: _loadRecords,
                              icon: const Icon(Icons.refresh),
                              label: const Text('Retry'),
                            ),
                          ],
                        ),
                      ),
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
                    for (final absence in _viewModel.allAttendance.where(
                      (record) => record.status == 'Absent',
                    ))
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
                          title: Text(
                            AttendanceViewModel.formatDate(absence.date),
                          ),
                          trailing: const Chip(
                            label: Text('Absent'),
                            visualDensity: VisualDensity.compact,
                            backgroundColor: SchoolTheme.paleOrange,
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                    if (!_isLoading &&
                        _errorMessage == null &&
                        _viewModel.absentDays == 0)
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text('No absences recorded.'),
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

  Future<void> _loadRecords() async {
    final learnerId = widget.child.learnerId;
    if (learnerId == null) {
      setState(() {
        _isLoading = false;
        _errorMessage = 'This learner profile has no linked database record.';
      });
      return;
    }
    // The callback verifies the learner-specific RPC result before returning records.
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    try {
      final records = await widget.loadAttendance(learnerId);
      if (!mounted) return;
      _viewModel.setAttendanceRecords(records);
    } on Object catch (error) {
      if (!mounted) return;
      _errorMessage = 'Unable to load attendance records: $error';
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
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
            '${viewModel.weeklyPresentDays}/${viewModel.weeklyAttendance.length} days present · '
            '${viewModel.weeklyAttendance.where((day) => day.status == 'Absent').length} absent · '
            '${viewModel.weeklyAttendancePercent}%',
            style: const TextStyle(color: SchoolTheme.ink),
          ),
          const SizedBox(height: 4),
          if (viewModel.weeklyAttendance.isEmpty)
            const Text(
              'No attendance recorded this week.',
              style: TextStyle(color: SchoolTheme.muted, fontSize: 11),
            ),
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