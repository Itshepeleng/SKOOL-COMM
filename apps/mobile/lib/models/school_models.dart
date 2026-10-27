class PointRecord {
  const PointRecord({
    this.pointId = 0,
    required this.date,
    required this.title,
    required this.detail,
    required this.points,
    required this.teacherInitials,
    required this.teacherName,
    required this.teacherNote,
  });

  final int pointId;
  final DateTime date;
  final String title;
  final String detail;
  final int points;
  final String teacherInitials;
  final String teacherName;
  final String teacherNote;

  factory PointRecord.fromJson(Map<String, dynamic> json) {
    final rawId = json['pointid'];
    final rawDate = json['daterecorded'];
    final rawPoints = json['points'];
    if (rawId is! num || rawDate == null || rawPoints is! num) {
      throw const FormatException(
        'Behaviour response is missing its ID, date, or points.',
      );
    }
    final offenceName = json['offencename']?.toString() ?? '';
    final offenceCode = json['offencecode']?.toString() ?? 'Record';
    final level = json['level']?.toString();
    return PointRecord(
      pointId: rawId.toInt(),
      date: DateTime.parse(rawDate.toString()),
      title: offenceName.isEmpty ? 'Behaviour record' : offenceName,
      detail: level == null ? offenceCode : 'Level $level · $offenceCode',
      points: rawPoints.toInt(),
      teacherInitials: json['teacher_initials']?.toString() ?? '',
      teacherName: json['teacher_name']?.toString() ?? 'School staff',
      teacherNote: json['reason']?.toString() ?? '',
    );
  }
}

class SchoolEvent {
  const SchoolEvent({
    required this.id,
    required this.kind,
    required this.date,
    required this.endDate,
    required this.title,
    required this.description,
    required this.time,
    required this.location,
    required this.colorValue,
  });

  final int id;
  final String kind;
  final DateTime date;
  final DateTime endDate;
  final String title;
  final String description;
  final String time;
  final String location;
  final int colorValue;

  factory SchoolEvent.fromJson(Map<String, dynamic> json) {
    final rawId = json['id'];
    final rawStartDate = json['start_date'];
    final rawEndDate = json['end_date'];
    final title = json['title'];
    final kind = json['kind'];
    if (rawId is! num ||
        rawStartDate == null ||
        rawEndDate == null ||
        title is! String ||
        kind is! String) {
      throw const FormatException(
        'Calendar event response is missing required fields.',
      );
    }

    // Keep the full date range so multi-day year-plan items appear on each day.
    final date = DateTime.parse(rawStartDate.toString());
    final endDate = DateTime.parse(rawEndDate.toString());
    return SchoolEvent(
      id: rawId.toInt(),
      kind: kind,
      date: date,
      endDate: endDate,
      title: title,
      description: json['description']?.toString() ?? '',
      time: kind == 'event'
          ? '${date.hour.toString().padLeft(2, '0')}:'
                '${date.minute.toString().padLeft(2, '0')}'
          : '',
      location: json['location']?.toString() ?? '',
      colorValue: kind == 'yearplan' ? 0xFFF58220 : 0xFF17613B,
    );
  }

  static final samples = [
    SchoolEvent(
      id: 1,
      kind: 'event',
      date: DateTime(2026, 9, 25),
      endDate: DateTime(2026, 9, 25),
      title: 'Parent-Teacher Meeting',
      description: '',
      time: '14:00',
      location: 'School Hall',
      colorValue: 0xFF17613B,
    ),
    SchoolEvent(
      id: 2,
      kind: 'event',
      date: DateTime(2026, 9, 28),
      endDate: DateTime(2026, 9, 28),
      title: 'Sports Day',
      description: '',
      time: '08:00',
      location: 'School Fields',
      colorValue: 0xFFF58220,
    ),
    SchoolEvent(
      id: 3,
      kind: 'event',
      date: DateTime(2026, 10, 2),
      endDate: DateTime(2026, 10, 2),
      title: 'School Closes Early',
      description: '',
      time: '12:00',
      location: 'School Grounds',
      colorValue: 0xFFE64B58,
    ),
  ];
}
