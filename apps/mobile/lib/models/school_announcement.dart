class SchoolAnnouncement {
  const SchoolAnnouncement({
    required this.id,
    required this.title,
    required this.content,
    required this.datePosted,
    required this.targetAudience,
  });

  final int id;
  final String title;
  final String content;
  final DateTime datePosted;
  final String targetAudience;

  factory SchoolAnnouncement.fromJson(Map<String, dynamic> json) {
    final rawId = json['announcement_id'];
    final rawDate = json['date_posted'];
    final title = json['title'];
    final content = json['content'];
    if (rawId is! num ||
        rawDate == null ||
        title is! String ||
        content is! String) {
      throw const FormatException(
        'Announcement response is missing its ID, title, content, or date.',
      );
    }

    return SchoolAnnouncement(
      id: rawId.toInt(),
      title: title,
      content: content,
      datePosted: DateTime.parse(rawDate.toString()),
      targetAudience: json['target_audience']?.toString() ?? 'All Parents',
    );
  }
}
