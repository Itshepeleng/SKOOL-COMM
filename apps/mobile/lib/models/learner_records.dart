class LearnerAttendanceRecord {
  const LearnerAttendanceRecord({required this.date, required this.status});

  final DateTime date;
  final String status;

  factory LearnerAttendanceRecord.fromJson(Map<String, dynamic> json) {
    final rawDate = json['attendance_date'] ?? json['date'];
    final rawStatus = json['status'];
    if (rawDate == null || rawStatus is! String || rawStatus.trim().isEmpty) {
      throw const FormatException(
        'Attendance response is missing its date or status.',
      );
    }
    return LearnerAttendanceRecord(
      date: DateTime.parse(rawDate.toString()),
      status: _titleCase(rawStatus),
    );
  }
}

String _titleCase(String value) {
  final normalized = value.trim().toLowerCase();
  if (normalized.isEmpty) return normalized;
  return '${normalized[0].toUpperCase()}${normalized.substring(1)}';
}
