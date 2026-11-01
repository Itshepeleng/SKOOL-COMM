import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/school_announcement.dart';
import '../../viewmodels/messages_view_model.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({
    required this.viewModel,
    required this.onBack,
    super.key,
  });

  final MessagesViewModel viewModel;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, _) => SafeArea(
        child: Column(
          children: [
            AppBar(
              title: const Text('Latest News'),
              leading: IconButton(
                tooltip: 'Back',
                onPressed: onBack,
                icon: const Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(
                  tooltip: 'Refresh news',
                  onPressed: viewModel.isLoading
                      ? null
                      : viewModel.loadAnnouncements,
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            Expanded(
              child: viewModel.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : viewModel.errorMessage != null
                  ? _LoadError(
                      message: viewModel.errorMessage!,
                      onRetry: viewModel.loadAnnouncements,
                    )
                  : viewModel.announcements.isEmpty
                  ? const Center(child: Text('No announcements yet.'))
                  : RefreshIndicator(
                      onRefresh: () async {
                        await viewModel.loadAnnouncements();
                      },
                      child: ListView.separated(
                        padding: const EdgeInsets.all(14),
                        itemCount: viewModel.announcements.length,
                        separatorBuilder: (_, _) =>
                            const SizedBox(height: 12),
                        itemBuilder: (context, index) {
                          final announcement =
                              viewModel.announcements[index];
                          return _AnnouncementCard(
                            announcement: announcement,
                            onTap: () =>
                                _showArticle(context, announcement),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  static void _showArticle(
    BuildContext context,
    SchoolAnnouncement announcement,
  ) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(22, 8, 22, 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              announcement.title,
              style: const TextStyle(
                color: SchoolTheme.darkGreen,
                fontWeight: FontWeight.w800,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              _formatDate(announcement.datePosted),
              style: const TextStyle(color: SchoolTheme.muted),
            ),
            const SizedBox(height: 14),
            Text(announcement.content, style: const TextStyle(height: 1.4)),
          ],
        ),
      ),
    );
  }

  static String _formatDate(DateTime date) {
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

class _AnnouncementCard extends StatelessWidget {
  const _AnnouncementCard({required this.announcement, required this.onTap});

  final SchoolAnnouncement announcement;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xFFE1E7E2)),
        borderRadius: BorderRadius.circular(11),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(14),
        leading: const CircleAvatar(
          backgroundColor: SchoolTheme.paleGreen,
          child: Icon(Icons.campaign_outlined, color: SchoolTheme.green),
        ),
        title: Text(
          announcement.title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            '${announcement.targetAudience} · '
            '${NewsScreen._formatDate(announcement.datePosted)}',
          ),
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}

class _LoadError extends StatelessWidget {
  const _LoadError({required this.message, required this.onRetry});

  final String message;
  final Future<bool> Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            TextButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
