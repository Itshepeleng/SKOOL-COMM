import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/school_announcement.dart';
import '../../viewmodels/messages_view_model.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({
    required this.viewModel,
    required this.onBack,
    super.key,
  });

  final MessagesViewModel viewModel;
  final VoidCallback onBack;

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  late final MessagesViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel..loadAnnouncements();
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
        appBar: AppBar(
          title: const Text('Messages'),
          leading: IconButton(
            tooltip: 'Back',
            onPressed: widget.onBack,
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              tooltip: 'Refresh messages',
              onPressed: _viewModel.isLoading
                  ? null
                  : _viewModel.loadAnnouncements,
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: _viewModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : _viewModel.errorMessage != null
            ? _LoadError(
                message: _viewModel.errorMessage!,
                onRetry: _viewModel.loadAnnouncements,
              )
            : _viewModel.announcements.isEmpty
            ? const Center(child: Text('No school messages yet.'))
            : RefreshIndicator(
                onRefresh: () async {
                  await _viewModel.loadAnnouncements();
                },
                child: ListView.separated(
                  padding: const EdgeInsets.all(14),
                  itemCount: _viewModel.announcements.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 9),
                  itemBuilder: (context, index) {
                    final announcement = _viewModel.announcements[index];
                    return _AnnouncementCard(
                      announcement: announcement,
                      onTap: () => _showAnnouncement(context, announcement),
                    );
                  },
                ),
              ),
      ),
    );
  }

  static void _showAnnouncement(
    BuildContext context,
    SchoolAnnouncement announcement,
  ) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 8, 22, 28),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  announcement.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: SchoolTheme.darkGreen,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${announcement.targetAudience} · '
                  '${_formatDate(announcement.datePosted)}',
                  style: const TextStyle(color: SchoolTheme.muted),
                ),
                const SizedBox(height: 14),
                Text(announcement.content),
              ],
            ),
          ),
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
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Color(0xFFE4E9E5)),
        borderRadius: BorderRadius.circular(11),
      ),
      child: ListTile(
        onTap: onTap,
        leading: const CircleAvatar(
          backgroundColor: SchoolTheme.paleGreen,
          child: Icon(Icons.campaign_outlined, color: SchoolTheme.darkGreen),
        ),
        title: Text(
          announcement.title,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            '${announcement.targetAudience} · '
            '${_formatDate(announcement.datePosted)}\n'
            '${announcement.content}',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
        ),
        isThreeLine: true,
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
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 12),
            TextButton.icon(
              onPressed: () {
                onRetry();
              },
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
