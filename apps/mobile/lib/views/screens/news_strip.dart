import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/school_announcement.dart';
import '../../viewmodels/inbox_view_model.dart';
import '../../viewmodels/messages_view_model.dart';
import 'message_popup.dart';

/// One item in the news feed: either a school announcement or a teacher message.
class NewsEntry {
  const NewsEntry({
    required this.title,
    required this.body,
    required this.date,
    required this.source,
    this.message,
  });

  final String title;
  final String body;
  final DateTime? date;

  /// "School" for announcements, the teacher's name for messages.
  final String source;
  final InboxMessage? message;

  bool get isMessage => message != null;
  bool get unread => message != null && !message!.isRead;
}

/// Merges announcements and messages. Unread messages come first,
/// then newest first. Set [includeUnread] to false to hide unread messages.
List<NewsEntry> buildNewsEntries({
  InboxViewModel? inbox,
  MessagesViewModel? announcements,
  bool includeUnread = true,
}) {
  final list = <NewsEntry>[
    for (final a in announcements?.announcements ?? const <SchoolAnnouncement>[])
      NewsEntry(
        title: a.title,
        body: a.content,
        date: a.datePosted,
        source: 'School',
      ),
    for (final m in inbox?.messages ?? const <InboxMessage>[])
      if (includeUnread || m.isRead)
        NewsEntry(
          title: m.title,
          body: m.body,
          date: m.createdAt,
          source: m.sender.isEmpty ? 'School' : m.sender,
          message: m,
        ),
  ];
  list.sort((a, b) {
    if (a.unread != b.unread) return a.unread ? -1 : 1;
    final ad = a.date;
    final bd = b.date;
    if (ad == null && bd == null) return 0;
    if (ad == null) return 1;
    if (bd == null) return -1;
    return bd.compareTo(ad);
  });
  return list;
}

String newsDateLabel(DateTime? d) {
  if (d == null) return '';
  const months = [
    'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
  ];
  return '${d.day} ${months[d.month - 1]}';
}

/// Opens an entry: unread messages get the envelope popup,
/// everything else opens a bottom sheet with the full text.
void openNewsEntry(
  BuildContext context,
  NewsEntry entry,
  InboxViewModel? inbox,
) {
  final message = entry.message;
  if (message != null && inbox != null && !message.isRead) {
    showIncomingMessagePopup(context, message, inbox);
    return;
  }
  showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (_) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 8, 22, 28),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                entry.title,
                style: const TextStyle(
                  color: SchoolTheme.darkGreen,
                  fontWeight: FontWeight.w800,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'From ${entry.source}'
                '${entry.date == null ? '' : ' · ${newsDateLabel(entry.date)}'}',
                style: const TextStyle(color: SchoolTheme.muted),
              ),
              const SizedBox(height: 14),
              Text(entry.body, style: const TextStyle(height: 1.4)),
            ],
          ),
        ),
      ),
    ),
  );
}

const _palette = [
  [Color(0xFF17613B), Color(0xFF2E9E62)],
  [Color(0xFFF58220), Color(0xFFFFB347)],
  [Color(0xFFE64B58), Color(0xFFFF8A94)],
  [Color(0xFF5B4BC4), Color(0xFF8E7CF0)],
];

const _icons = [
  Icons.campaign_rounded,
  Icons.celebration_rounded,
  Icons.star_rounded,
  Icons.auto_awesome_rounded,
];

class NewsStrip extends StatelessWidget {
  const NewsStrip({
    required this.onSeeAll,
    this.inbox,
    this.announcements,
    this.onDark = false,
    super.key,
  });

  final InboxViewModel? inbox;
  final MessagesViewModel? announcements;
  final VoidCallback onSeeAll;

  /// true when the strip sits on a photo / dark background (white heading).
  final bool onDark;

  static final _none = ValueNotifier<int>(0);
  static const maxCards = 3;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([inbox ?? _none, announcements ?? _none]),
      builder: (context, _) {
        final items = buildNewsEntries(
          inbox: inbox,
          announcements: announcements,
        ).take(maxCards).toList();
        final unread = inbox?.unreadCount ?? 0;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const _Bouncing(
                  child: Icon(
                    Icons.campaign_rounded,
                    color: SchoolTheme.orange,
                    size: 26,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Latest News',
                  style: TextStyle(
                    color: onDark ? Colors.white : SchoolTheme.darkGreen,
                    shadows: onDark
                        ? const [Shadow(color: Colors.black45, blurRadius: 6)]
                        : null,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                if (unread > 0) ...[
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: SchoolTheme.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$unread new',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
                const Spacer(),
                TextButton(
                  onPressed: onSeeAll,
                  style: onDark
                      ? TextButton.styleFrom(foregroundColor: Colors.white)
                      : null,
                  child: const Text('See all'),
                ),
              ],
            ),
            const SizedBox(height: 6),
            if (items.isEmpty)
              const _EmptyNews()
            else
              SizedBox(
                height: 186,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: items.length,
                  itemBuilder: (context, i) => _Slide(
                    index: i,
                    child: _NewsTile(
                      entry: items[i],
                      index: i,
                      onTap: () => openNewsEntry(context, items[i], inbox),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

class _EmptyNews extends StatelessWidget {
  const _EmptyNews();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: SchoolTheme.paleGreen,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Row(
        children: [
          Icon(Icons.celebration_rounded, color: SchoolTheme.green, size: 30),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "You're all caught up! New school news will show up here.",
              style: TextStyle(
                color: SchoolTheme.darkGreen,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Slides each card in from the right, one after the other.
class _Slide extends StatelessWidget {
  const _Slide({required this.index, required this.child});

  final int index;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 450 + index * 130),
      curve: Curves.easeOutBack,
      builder: (_, v, c) => Opacity(
        opacity: v.clamp(0.0, 1.0),
        child: Transform.translate(offset: Offset(60 * (1 - v), 0), child: c),
      ),
      child: child,
    );
  }
}

class _NewsTile extends StatelessWidget {
  const _NewsTile({
    required this.entry,
    required this.index,
    required this.onTap,
  });

  final NewsEntry entry;
  final int index;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = _palette[index % _palette.length];
    final date = newsDateLabel(entry.date);
    return Padding(
      padding: const EdgeInsets.only(right: 14, top: 8, bottom: 8),
      child: Transform.rotate(
        angle: index.isEven ? -0.025 : 0.025,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 230,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: colors.first.withValues(alpha: 0.4),
                  blurRadius: 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  right: -14,
                  bottom: -14,
                  child: Icon(
                    _icons[index % _icons.length],
                    size: 90,
                    color: Colors.white.withValues(alpha: 0.18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _Tag(entry.isMessage ? 'MESSAGE' : 'NEWS'),
                          const Spacer(),
                          if (entry.unread) const _PulseBadge(),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        entry.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          height: 1.15,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Expanded(
                        child: Text(
                          entry.body,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.92),
                            fontSize: 12,
                            height: 1.3,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            entry.isMessage
                                ? Icons.person_rounded
                                : Icons.school_rounded,
                            size: 14,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              'From ${entry.source}'
                              '${date.isEmpty ? '' : ' · $date'}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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

class _Tag extends StatelessWidget {
  const _Tag(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w800,
          letterSpacing: 1,
        ),
      ),
    );
  }
}

/// Pulsing "NEW" badge for unread messages.
class _PulseBadge extends StatefulWidget {
  const _PulseBadge();

  @override
  State<_PulseBadge> createState() => _PulseBadgeState();
}

class _PulseBadgeState extends State<_PulseBadge>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 800),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween(begin: 0.9, end: 1.15).animate(
        CurvedAnimation(parent: _c, curve: Curves.easeInOut),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'NEW',
          style: TextStyle(
            color: SchoolTheme.orange,
            fontSize: 10,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}

class _Bouncing extends StatefulWidget {
  const _Bouncing({required this.child});

  final Widget child;

  @override
  State<_Bouncing> createState() => _BouncingState();
}

class _BouncingState extends State<_Bouncing>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 900),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _c,
      builder: (_, child) =>
          Transform.rotate(angle: (_c.value - 0.5) * 0.4, child: child),
      child: widget.child,
    );
  }
}