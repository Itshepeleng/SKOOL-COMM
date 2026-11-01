import 'package:flutter/material.dart';
import '../../app/school_theme.dart';
import '../../models/school_announcement.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    required this.parentName,
    required this.onOpenPoints,
    required this.onOpenMessages,
    required this.onOpenAttendance,
    required this.onOpenReminders,
    required this.onOpenSettings,
    required this.onOpenCalendar,
    required this.onOpenNews,
    required this.latestAnnouncements,
    required this.isLoadingAnnouncements,
    required this.onRetryAnnouncements,
    this.announcementError,
    this.parentAvatarUrl,
    super.key,
  });

  final String parentName;
  final VoidCallback onOpenPoints;
  final VoidCallback onOpenMessages;
  final VoidCallback onOpenAttendance;
  final VoidCallback onOpenReminders;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenCalendar;
  final VoidCallback onOpenNews;
  final List<SchoolAnnouncement> latestAnnouncements;
  final bool isLoadingAnnouncements;
  final Future<bool> Function() onRetryAnnouncements;
  final String? announcementError;
  final String? parentAvatarUrl;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: SchoolTheme.green,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Wilgehof Primary School',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(parentName, style: const TextStyle(color: Colors.white)),
                const SizedBox(width: 9),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  backgroundImage: parentAvatarUrl == null
                      ? null
                      : NetworkImage(parentAvatarUrl!),
                  child: parentAvatarUrl == null
                      ? Text(
                          parentName.isEmpty
                              ? 'P'
                              : parentName[0].toUpperCase(),
                          style: const TextStyle(
                            color: SchoolTheme.green,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : null,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 18),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/school_homepage.jpg',
                    width: double.infinity,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 14),
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.7,
                  children: [
                    _ActionTile(
                      title: 'Behavioural Points',
                      icon: Icons.workspace_premium_outlined,
                      tint: SchoolTheme.paleGreen,
                      onTap: onOpenPoints,
                    ),
                    _ActionTile(
                      title: 'Attendance Records',
                      icon: Icons.event_available_outlined,
                      tint: SchoolTheme.paleOrange,
                      onTap: onOpenAttendance,
                    ),
                    _ActionTile(
                      title: 'Reminders',
                      icon: Icons.notifications_none,
                      tint: const Color(0xFFFFEEEE),
                      onTap: onOpenReminders,
                    ),
                    _ActionTile(
                      title: 'Messages',
                      icon: Icons.chat_bubble_outline,
                      tint: const Color(0xFFFFF9E9),
                      onTap: onOpenMessages,
                    ),
                    _ActionTile(
                      title: 'Settings',
                      icon: Icons.settings_outlined,
                      tint: SchoolTheme.paleGreen,
                      onTap: onOpenSettings,
                    ),
                    _ActionTile(
                      title: 'Calendar',
                      icon: Icons.calendar_month_outlined,
                      tint: SchoolTheme.paleGreen,
                      onTap: onOpenCalendar,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    'Latest News',
                    style: TextStyle(
                      color: SchoolTheme.darkGreen,
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                    ),
                  ),
                ),
                if (isLoadingAnnouncements)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(14),
                      child: CircularProgressIndicator(),
                    ),
                  )
                else if (announcementError != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Unable to load the latest announcements.',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                      TextButton(
                        onPressed: onRetryAnnouncements,
                        child: const Text('Retry'),
                      ),
                    ],
                  )
                else if (latestAnnouncements.isEmpty)
                  const Text(
                    'No announcements yet.',
                    style: TextStyle(color: SchoolTheme.muted),
                  )
                else
                  for (final announcement
                      in latestAnnouncements.take(2)) ...[
                    _NewsCard(
                      announcement: announcement,
                      onTap: onOpenNews,
                    ),
                    const SizedBox(height: 9),
                  ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({
    required this.title,
    required this.icon,
    required this.tint,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color tint;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tint,
      borderRadius: BorderRadius.circular(11),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(11),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: SchoolTheme.green, size: 23),
              const SizedBox(height: 5),
              Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NewsCard extends StatelessWidget {
  const _NewsCard({required this.announcement, required this.onTap});

  final SchoolAnnouncement announcement;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFE1E7E2)),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                announcement.title,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(
                _formatDate(announcement.datePosted),
                style: const TextStyle(
                  fontSize: 11,
                  color: SchoolTheme.muted,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                announcement.content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    const months = [
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
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}
