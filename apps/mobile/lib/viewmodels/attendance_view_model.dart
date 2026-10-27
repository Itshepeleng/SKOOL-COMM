import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../models/learner_records.dart';

class WeeklyAttendanceDay {
  const WeeklyAttendanceDay({required this.date, required this.status});

  final DateTime date;
  final String status;

  String get dateLabel => AttendanceViewModel.formatDate(date);

  String get weekdayLabel => AttendanceViewModel.weekday(date.weekday);
}

class AttendanceViewModel extends ChangeNotifier {
  AttendanceViewModel({
    required this.studentName,
    required this.grade,
    DateTime? now,
  }) : _weekStart = weekStartFor(now ?? DateTime.now());

  final String studentName;
  final String grade;
  final DateTime _weekStart;
  List<WeeklyAttendanceDay> _attendanceRecords = [];

  bool isDownloading = false;
  String? errorMessage;
  bool wasCancelled = false;

  List<WeeklyAttendanceDay> get allAttendance => List.unmodifiable(
    [..._attendanceRecords]..sort((a, b) => b.date.compareTo(a.date)),
  );

  List<WeeklyAttendanceDay> get weeklyAttendance {
    final weekEnd = _weekStart.add(const Duration(days: 7));
    return allAttendance
        .where(
          (record) =>
              !record.date.isBefore(_weekStart) &&
              record.date.isBefore(weekEnd),
        )
        .toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }

  int get totalDays => _attendanceRecords.length;

  int get presentDays =>
      allAttendance.where((day) => day.status == 'Present').length;

  int get weeklyPresentDays =>
      weeklyAttendance.where((day) => day.status == 'Present').length;

  int get absentDays =>
      allAttendance.where((day) => day.status == 'Absent').length;

  int get attendancePercent => _attendancePercentFor(allAttendance);

  int get weeklyAttendancePercent => _attendancePercentFor(weeklyAttendance);

  int _attendancePercentFor(List<WeeklyAttendanceDay> records) {
    if (records.isEmpty) return 0;
    // Any recorded status other than "Absent" counts as attendance.
    final attended = records.where((day) => day.status != 'Absent').length;
    return (attended / records.length * 100).round();
  }

  String get weekRange =>
      '${formatDate(_weekStart)} - ${formatDate(_weekStart.add(const Duration(days: 6)))}';

  void setAttendanceRecords(List<LearnerAttendanceRecord> records) {
    _attendanceRecords = records
        .map(
          (record) =>
              WeeklyAttendanceDay(date: record.date, status: record.status),
        )
        .toList();
    notifyListeners();
  }

  static DateTime weekStartFor(DateTime date) {
    final day = DateTime(date.year, date.month, date.day);
    // weekday numbers start at Monday, matching the school week display.
    return day.subtract(Duration(days: day.weekday - DateTime.monday));
  }

  Future<Uint8List> generateWeeklySummaryPdf() async {
    final document = pw.Document();
    final days = weeklyAttendance;
    final weeklyPercent = weeklyAttendancePercent;

    document.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => [
          pw.Text(
            'Wilgehof Primary School',
            style: pw.TextStyle(
              fontSize: 20,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.green900,
            ),
          ),
          pw.SizedBox(height: 8),
          pw.Text(
            'Weekly Attendance Summary',
            style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 18),
          pw.Text('Learner: $studentName'),
          pw.Text('Class: $grade'),
          pw.Text('Week: $weekRange'),
          pw.SizedBox(height: 16),
          pw.Container(
            padding: const pw.EdgeInsets.all(12),
            color: PdfColors.green50,
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  'Present: $weeklyPresentDays / ${days.length} recorded days',
                ),
                pw.Text(
                  'Absent: ${days.where((day) => day.status == 'Absent').length} days',
                ),
                pw.Text('Attendance: $weeklyPercent%'),
              ],
            ),
          ),
          pw.SizedBox(height: 18),
          pw.Table(
            border: pw.TableBorder.all(color: PdfColors.grey400),
            columnWidths: {
              0: const pw.FlexColumnWidth(1),
              1: const pw.FlexColumnWidth(1.6),
              2: const pw.FlexColumnWidth(1),
              3: const pw.FlexColumnWidth(1.5),
            },
            children: [
              _tableRow(['Day', 'Date', 'Status', 'Note'], header: true),
              for (final day in days)
                _tableRow([
                  weekday(day.date.weekday),
                  formatDate(day.date),
                  day.status,
                  '-',
                ]),
            ],
          ),
        ],
      ),
    );
    return document.save();
  }

  Future<bool> downloadWeeklySummary() async {
    isDownloading = true;
    errorMessage = null;
    wasCancelled = false;
    notifyListeners();

    try {
      final bytes = await generateWeeklySummaryPdf();
      if (kIsWeb) {
        // Browsers download directly; native platforms use a save-location picker.
        await FileSaver.instance.saveFile(
          name: 'weekly_attendance_summary',
          bytes: bytes,
          fileExtension: 'pdf',
          mimeType: MimeType.pdf,
        );
        return true;
      }
      final location = await FileSaver.instance.saveAs(
        name: 'weekly_attendance_summary',
        bytes: bytes,
        fileExtension: 'pdf',
        mimeType: MimeType.pdf,
      );
      wasCancelled = location == null;
      return !wasCancelled;
    } on Exception catch (error) {
      errorMessage = 'Unable to save the weekly attendance PDF: $error';
    } on UnsupportedError catch (error) {
      errorMessage = 'PDF saving is not supported on this device: $error';
    } finally {
      isDownloading = false;
      notifyListeners();
    }
    return false;
  }

  static String formatDate(DateTime date) =>
      '${date.day.toString().padLeft(2, '0')} ${_month(date.month)} ${date.year}';

  static String _month(int month) => const [
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

  static String weekday(int weekday) => const [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ][weekday - 1];

  static pw.TableRow _tableRow(List<String> values, {bool header = false}) {
    return pw.TableRow(
      decoration: header
          ? const pw.BoxDecoration(color: PdfColors.green100)
          : null,
      children: [
        for (final value in values)
          pw.Padding(
            padding: const pw.EdgeInsets.all(8),
            child: pw.Text(
              value,
              style: pw.TextStyle(
                fontWeight: header ? pw.FontWeight.bold : pw.FontWeight.normal,
              ),
            ),
          ),
      ],
    );
  }
}
