class PointRecord {
  const PointRecord({
    required this.date,
    required this.title,
    required this.detail,
    required this.points,
    required this.teacherInitials,
    required this.teacherName,
    required this.teacherNote,
  });

  final DateTime date;
  final String title;
  final String detail;
  final int points;
  final String teacherInitials;
  final String teacherName;
  final String teacherNote;

  static final samples = [
    PointRecord(
      date: DateTime(2025, 9, 30, 8, 40),
      title: 'Disrupting class / not following instructions',
      detail: 'Level 2 · Infringement',
      points: -10,
      teacherInitials: 'NP',
      teacherName: 'Ms N. P. Nevusa',
      teacherNote: 'Repeatedly talking while teacher was explaining.',
    ),
    PointRecord(
      date: DateTime(2025, 9, 16, 11, 40),
      title: 'Late for class',
      detail: 'Level 2 · Infringement',
      points: -10,
      teacherInitials: 'AT',
      teacherName: 'Mr A. T. Thulo',
      teacherNote: 'Arrived after the lesson had started.',
    ),
    PointRecord(
      date: DateTime(2025, 9, 12, 8, 30),
      title: 'Fighting / physical aggression',
      detail: 'Level 2 · Infringement',
      points: -10,
      teacherInitials: 'LM',
      teacherName: 'Ms L. Mokoena',
      teacherNote: 'The incident was discussed with the learner.',
    ),
    PointRecord(
      date: DateTime(2025, 9, 5, 10, 15),
      title: 'Using a cellphone in class',
      detail: 'Level 2 · Infringement',
      points: -10,
      teacherInitials: 'NP',
      teacherName: 'Ms N. P. Nevusa',
      teacherNote: 'Cellphone use was recorded during class.',
    ),
    PointRecord(
      date: DateTime(2025, 9, 2, 9),
      title: 'Helping a classmate',
      detail: 'Positive contribution',
      points: 10,
      teacherInitials: 'AT',
      teacherName: 'Mr A. T. Thulo',
      teacherNote: 'Showed kindness by helping a classmate.',
    ),
  ];
}

class SchoolEvent {
  const SchoolEvent({
    required this.date,
    required this.title,
    required this.time,
    required this.location,
    required this.colorValue,
  });

  final DateTime date;
  final String title;
  final String time;
  final String location;
  final int colorValue;

  static final samples = [
    SchoolEvent(
      date: DateTime(2026, 9, 25),
      title: 'Parent-Teacher Meeting',
      time: '14:00',
      location: 'School Hall',
      colorValue: 0xFF17613B,
    ),
    SchoolEvent(
      date: DateTime(2026, 9, 28),
      title: 'Sports Day',
      time: '08:00',
      location: 'School Fields',
      colorValue: 0xFFF58220,
    ),
    SchoolEvent(
      date: DateTime(2026, 10, 2),
      title: 'School Closes Early',
      time: '12:00',
      location: 'School Grounds',
      colorValue: 0xFFE64B58,
    ),
  ];
}
