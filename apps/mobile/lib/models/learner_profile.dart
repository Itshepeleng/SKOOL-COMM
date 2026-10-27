
class LearnerProfile {
  const LearnerProfile({
    this.learnerId,
    required this.firstName,
    required this.lastName,
    required this.grade,
    required this.className,
    required this.relationship,
  });

  final int? learnerId;
  final String firstName;
  final String lastName;
  final String grade;
  final String className;
  final String relationship;

  String get fullName => '$firstName $lastName';

  factory LearnerProfile.fromJson(Map<String, dynamic> json) {
    final learnerId = _value(json, const ['learnerid', 'learner_id']);
    if (learnerId is! num) {
      throw const FormatException('Learner response has no valid learner ID.');
    }
    return LearnerProfile(
      learnerId: learnerId.toInt(),
      firstName:
          _value(json, const ['firstname', 'first_name']) as String? ?? '',
      lastName: _value(json, const ['lastname', 'last_name']) as String? ?? '',
      grade: _value(json, const ['grade'])?.toString() ?? '',
      className: _value(json, const ['class_name', 'class'])?.toString() ?? '',
      relationship: _value(json, const ['relationship']) as String? ?? '',
    );
  }

  static Object? _value(Map<String, dynamic> json, List<String> names) {
    // Supabase RPCs and the legacy ERD use different column names and casing.
    for (final name in names) {
      if (json.containsKey(name)) return json[name];
    }
    final normalizedNames = names.map((name) => name.toLowerCase()).toSet();
    for (final entry in json.entries) {
      if (normalizedNames.contains(entry.key.toLowerCase())) {
        return entry.value;
      }
    }
    return null;
  }
}
