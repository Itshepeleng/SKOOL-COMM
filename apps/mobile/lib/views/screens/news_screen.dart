import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/inbox_view_model.dart';
import '../../viewmodels/messages_view_model.dart';
import '../widgets/school_loading_screen.dart';
import 'news_strip.dart';

/// Full news list: school announcements plus teacher messages the parent
/// has already read. Nothing is hardcoded.
class NewsScreen extends StatelessWidget {
  const NewsScreen({
    required this.onBack,
    this.inbox,
    this.announcements,
    this.title = 'Latest News',
    this.includeUnread = false,
    super.key,
  });

  final String title;

  /// true = also list messages the parent hasn't opened yet (Messages tab).
  final bool includeUnread;

  final VoidCallback onBack;
  final InboxViewModel? inbox;
  final MessagesViewModel? announcements;

  static final _none = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            title: Text(title),
            leading: IconButton(
              tooltip: 'Back',
              onPressed: onBack,
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Expanded(
            child: AnimatedBuilder(
              animation: Listenable.merge([
                inbox ?? _none,
                announcements ?? _none,
              ]),
              builder: (context, _) {
                final entries = buildNewsEntries(
                  inbox: inbox,
                  announcements: announcements,
                  includeUnread: includeUnread,
                );
                if (announcements?.isLoading == true && entries.isEmpty) {
                  return const Center(
                    child: SchoolLoadingIndicator(
                      message: 'Loading school news...',
                    ),
                  );
                }
                if (entries.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'No news yet. School announcements and messages you '
                        'have read will appear here.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: SchoolTheme.muted),
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(14),
                  itemCount: entries.length,
                  itemBuilder: (context, i) => _EntryCard(
                    entry: entries[i],
                    onTap: () => openNewsEntry(context, entries[i], inbox),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _EntryCard extends StatelessWidget {
  const _EntryCard({required this.entry, required this.onTap});

  final NewsEntry entry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final accent = entry.isMessage ? SchoolTheme.orange : SchoolTheme.green;
    final date = newsDateLabel(entry.date);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: const Color(0xFFE1E7E2)),
          ),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 6,
                  decoration: BoxDecoration(
                    color: accent,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(14),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entry.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          entry.body,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 12,
                            height: 1.3,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              entry.isMessage
                                  ? Icons.person_rounded
                                  : Icons.school_rounded,
                              size: 14,
                              color: accent,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'From ${entry.source}'
                              '${date.isEmpty ? '' : ' · $date'}',
                              style: TextStyle(
                                color: accent,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
