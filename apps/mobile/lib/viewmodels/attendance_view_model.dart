import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class WeeklyAttendanceDay {
  const WeeklyAttendanceDay({
    required this.date,
    required this.status,
    this.note = '',
  });

  final DateTime date;
  final String status;
  final String note;

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

  bool isDownloading = false;
  String? errorMessage;
  bool wasCancelled = false;

  List<WeeklyAttendanceDay> get weeklyAttendance => [
    WeeklyAttendanceDay(date: _weekStart, status: 'Present'),
    WeeklyAttendanceDay(
      date: _weekStart.add(const Duration(days: 1)),
      status: 'Present',
    ),
    WeeklyAttendanceDay(
      date: _weekStart.add(const Duration(days: 2)),
      status: 'Absent',
      note: 'Sick',
    ),
    WeeklyAttendanceDay(
      date: _weekStart.add(const Duration(days: 3)),
      status: 'Present',
    ),
    WeeklyAttendanceDay(
      date: _weekStart.add(const Duration(days: 4)),
      status: 'Present',
    ),
  ];

  int get presentDays =>
      weeklyAttendance.where((day) => day.status == 'Present').length;

  int get absentDays =>
      weeklyAttendance.where((day) => day.status == 'Absent').length;

  int get attendancePercent =>
      (presentDays / weeklyAttendance.length * 100).round();

  String get weekRange =>
      '${formatDate(_weekStart)} - ${formatDate(_weekStart.add(const Duration(days: 4)))}';

  static DateTime weekStartFor(DateTime date) {
    final day = DateTime(date.year, date.month, date.day);
    return day.subtract(Duration(days: day.weekday - DateTime.monday));
  }

  Future<Uint8List> generateWeeklySummaryPdf() async {
    final document = pw.Document();
    final days = weeklyAttendance;
    final weeklyPercent = attendancePercent;

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
                pw.Text('Present: $presentDays / ${days.length} days'),
                pw.Text('Absent: $absentDays days'),
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
                  day.note.isEmpty ? '-' : day.note,
                ]),
            ],
          ),
          pw.SizedBox(height: 24),
          pw.Text(
            'Sample report: attendance entries shown here are demonstration data.',
            style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey700),
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
