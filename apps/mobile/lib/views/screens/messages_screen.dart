import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/inbox_view_model.dart';
import '../../viewmodels/messages_view_model.dart';
import 'news_strip.dart';

/// Inbox: teacher messages (live from Supabase) plus school announcements.
class MessagesScreen extends StatefulWidget {
  const MessagesScreen({
    required this.onBack,
    this.inbox,
    this.announcements,
    super.key,
  });

  final VoidCallback onBack;
  final InboxViewModel? inbox;
  final MessagesViewModel? announcements;

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  static final _none = ValueNotifier<int>(0);
  static const _filters = ['All', 'Unread', 'Teachers', 'School'];

  final _searchController = TextEditingController();
  String _selectedFilter = 'All';
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<NewsEntry> _visible(List<NewsEntry> all) {
    final q = _searchQuery.trim().toLowerCase();
    return all.where((e) {
      final okFilter = switch (_selectedFilter) {
        'Unread' => e.unread,
        'Teachers' => e.isMessage,
        'School' => !e.isMessage,
        _ => true,
      };
      final okSearch =
          q.isEmpty ||
          e.title.toLowerCase().contains(q) ||
          e.body.toLowerCase().contains(q) ||
          e.source.toLowerCase().contains(q) ||
          (e.message?.learnerName.toLowerCase().contains(q) ?? false);
      return okFilter && okSearch;
    }).toList();
  }

  Future<void> _refresh() async {
    await Future.wait<Object?>([
      if (widget.inbox != null) widget.inbox!.load(),
      if (widget.announcements != null)
        widget.announcements!.loadAnnouncements(),
    ]);
  }

  Future<void> _open(NewsEntry entry) async {
    final message = entry.message;
    // Opening a message marks it read, so the teacher sees it as "seen".
    if (message != null && widget.inbox != null) {
      await widget.inbox!.markRead(message);
    }
    if (!mounted) return;
    await Navigator.of(context).push<void>(
      PageRouteBuilder<void>(
        transitionDuration: const Duration(milliseconds: 280),
        pageBuilder: (_, _, _) => _DetailScreen(entry: entry),
        transitionsBuilder: (_, animation, _, child) {
          final slide = Tween<Offset>(
            begin: const Offset(0.04, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOutCubic));
          return FadeTransition(
            opacity: animation,
            child: SlideTransition(position: slide, child: child),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([
        widget.inbox ?? _none,
        widget.announcements ?? _none,
      ]),
      builder: (context, _) {
        final all = buildNewsEntries(
          inbox: widget.inbox,
          announcements: widget.announcements,
        );
        final entries = _visible(all);
        final unread = widget.inbox?.unreadCount ?? 0;
        final loading = widget.inbox == null
            ? false
            : (widget.announcements?.isLoading ?? false) && all.isEmpty;

        return SafeArea(
          child: Column(
            children: [
              _header(unread),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: _refresh,
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    slivers: [
                      SliverToBoxAdapter(child: _intro(unread)),
                      if (loading)
                        const SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(child: CircularProgressIndicator()),
                        )
                      else if (entries.isEmpty)
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: _EmptyState(hasAny: all.isNotEmpty),
                        )
                      else
                        SliverPadding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 110),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, i) => Padding(
                                padding: const EdgeInsets.only(bottom: 13),
                                child: _EntryCard(
                                  entry: entries[i],
                                  onTap: () => _open(entries[i]),
                                ),
                              ),
                              childCount: entries.length,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _intro(int unread) {
    final error = widget.inbox?.errorMessage;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 22, 20, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your school,',
            style: TextStyle(color: Color(0xFF68736A), fontSize: 14),
          ),
          const SizedBox(height: 3),
          const Text(
            'Messages',
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w800,
              color: Color(0xFF17251A),
              letterSpacing: -0.7,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Stay connected with your school community.',
            style: TextStyle(fontSize: 13, color: Color(0xFF68736A)),
          ),
          if (error != null) ...[
            const SizedBox(height: 10),
            Text(
              error,
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: 12,
              ),
            ),
          ],
          const SizedBox(height: 20),
          _searchBar(),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text(
                'Your inbox',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              if (unread > 0)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: SchoolTheme.paleOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '$unread unread',
                    style: const TextStyle(
                      color: SchoolTheme.orange,
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 14),
          _filterRow(),
          const SizedBox(height: 18),
        ],
      ),
    );
  }

  Widget _header(int unread) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 18, 18),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [SchoolTheme.darkGreen, SchoolTheme.green, Color(0xFF287441)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(26)),
      ),
      child: Row(
        children: [
          IconButton(
            tooltip: 'Back',
            onPressed: widget.onBack,
            style: IconButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.white.withValues(alpha: 0.12),
            ),
            icon: const Icon(Icons.arrow_back_rounded),
          ),
          const SizedBox(width: 4),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.13),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
            ),
            child: const Icon(Icons.school_rounded, color: Colors.white, size: 26),
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Skool-Comm',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.3,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  'Wilgehof Primary School',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xFFD6E9D9), fontSize: 10),
                ),
              ],
            ),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.notifications_none_rounded,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              if (unread > 0)
                Positioned(
                  right: 3,
                  top: 2,
                  child: Container(
                    height: 17,
                    width: 17,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: SchoolTheme.orange,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '$unread',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: SchoolTheme.green.withValues(alpha: 0.05),
            blurRadius: 18,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        controller: _searchController,
        onChanged: (v) => setState(() => _searchQuery = v),
        decoration: InputDecoration(
          hintText: 'Search messages or a learner...',
          hintStyle: const TextStyle(fontSize: 13, color: Colors.black38),
          prefixIcon: const Icon(Icons.search_rounded, color: SchoolTheme.green),
          suffixIcon: _searchQuery.isEmpty
              ? null
              : IconButton(
                  tooltip: 'Clear search',
                  onPressed: () {
                    _searchController.clear();
                    setState(() => _searchQuery = '');
                  },
                  icon: const Icon(Icons.close_rounded),
                ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }

  Widget _filterRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _filters.map((filter) {
          final selected = _selectedFilter == filter;
          final icon = switch (filter) {
            'Unread' => Icons.mark_email_unread_rounded,
            'Teachers' => Icons.person_rounded,
            'School' => Icons.campaign_rounded,
            _ => Icons.grid_view_rounded,
          };
          return Padding(
            padding: const EdgeInsets.only(right: 9),
            child: Material(
              color: selected ? SchoolTheme.green : Colors.white,
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () => setState(() => _selectedFilter = filter),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 11,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        icon,
                        size: 16,
                        color: selected ? Colors.white : SchoolTheme.green,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        filter,
                        style: TextStyle(
                          color: selected ? Colors.white : Colors.black87,
                          fontSize: 12,
                          fontWeight: selected
                              ? FontWeight.w700
                              : FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

String _timeLabel(DateTime? d) {
  if (d == null) return '';
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final day = DateTime(d.year, d.month, d.day);
  final diff = today.difference(day).inDays;
  if (diff <= 0) {
    return '${d.hour.toString().padLeft(2, '0')}:'
        '${d.minute.toString().padLeft(2, '0')}';
  }
  if (diff == 1) return 'Yesterday';
  if (diff < 7) return '$diff days ago';
  return newsDateLabel(d);
}

String _fullDate(DateTime? d) {
  if (d == null) return '';
  return '${newsDateLabel(d)} ${d.year}, '
      '${d.hour.toString().padLeft(2, '0')}:'
      '${d.minute.toString().padLeft(2, '0')}';
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({required this.hasAny});

  final bool hasAny;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 110),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: SchoolTheme.paleGreen,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.mark_email_read_rounded,
                color: SchoolTheme.green,
                size: 44,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              hasAny ? 'No messages found' : 'No messages yet',
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 8),
            Text(
              hasAny
                  ? 'Try another filter or search for a different message.'
                  : 'Messages from your child\'s teachers and the school will '
                        'appear here.',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black54, height: 1.5),
            ),
          ],
        ),
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
    final unread = entry.unread;
    final isMsg = entry.isMessage;
    final accent = isMsg ? SchoolTheme.orange : SchoolTheme.green;
    final learner = entry.message?.learnerName ?? '';

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.97, end: 1),
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
      builder: (context, scale, child) =>
          Transform.scale(scale: scale, child: child),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: unread
                    ? SchoolTheme.orange.withValues(alpha: 0.55)
                    : const Color(0xFFF0F1EE),
              ),
              boxShadow: [
                BoxShadow(
                  color: unread
                      ? SchoolTheme.orange.withValues(alpha: 0.18)
                      : SchoolTheme.green.withValues(alpha: 0.035),
                  blurRadius: 16,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: isMsg
                            ? const Color(0xFFFFF0E3)
                            : SchoolTheme.paleGreen,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        isMsg
                            ? (unread
                                  ? Icons.mark_email_unread_rounded
                                  : Icons.drafts_rounded)
                            : Icons.campaign_rounded,
                        color: accent,
                        size: 25,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entry.source,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: unread
                                  ? FontWeight.w800
                                  : FontWeight.w600,
                              color: const Color(0xFF243327),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            entry.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: unread
                                  ? FontWeight.w800
                                  : FontWeight.w600,
                              color: const Color(0xFF17251A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          _timeLabel(entry.date),
                          style: TextStyle(
                            fontSize: 10,
                            color: unread ? SchoolTheme.orange : Colors.black45,
                            fontWeight: unread
                                ? FontWeight.w700
                                : FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 9),
                        if (unread)
                          Container(
                            width: 9,
                            height: 9,
                            decoration: const BoxDecoration(
                              color: SchoolTheme.orange,
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Text(
                  entry.body,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF69736A),
                    fontSize: 12,
                    height: 1.55,
                  ),
                ),
                const SizedBox(height: 13),
                Row(
                  children: [
                    _Chip(
                      label: learner.isNotEmpty
                          ? 'About $learner'
                          : (isMsg ? 'Teacher message' : 'School news'),
                      icon: learner.isNotEmpty ? Icons.face_rounded : null,
                      highlight: learner.isNotEmpty,
                    ),
                    const Spacer(),
                    const Text(
                      'Read message',
                      style: TextStyle(
                        color: SchoolTheme.green,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.arrow_forward_rounded,
                      color: SchoolTheme.green,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.label, this.icon, this.highlight = false});

  final String label;
  final IconData? icon;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final fg = highlight ? const Color(0xFFB85A13) : Colors.black54;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: highlight ? const Color(0xFFFFEFE1) : const Color(0xFFF2F4F1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 13, color: fg),
            const SizedBox(width: 4),
          ],
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 10,
                color: fg,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailScreen extends StatelessWidget {
  const _DetailScreen({required this.entry});

  final NewsEntry entry;

  @override
  Widget build(BuildContext context) {
    final learner = entry.message?.learnerName ?? '';
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8F5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(12, 8, 20, 18),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [SchoolTheme.darkGreen, SchoolTheme.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
              ),
              child: Row(
                children: [
                  IconButton(
                    tooltip: 'Back',
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      'Message Details',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const Icon(Icons.verified_user_outlined, color: Colors.white70),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: SchoolTheme.green.withValues(alpha: 0.045),
                        blurRadius: 20,
                        offset: const Offset(0, 7),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: SchoolTheme.paleGreen,
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Icon(
                              entry.isMessage
                                  ? Icons.person_rounded
                                  : Icons.school_rounded,
                              color: SchoolTheme.green,
                              size: 29,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  entry.source,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'Wilgehof Primary School',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (learner.isNotEmpty) ...[
                        const SizedBox(height: 18),
                        _Chip(
                          label: 'About $learner',
                          icon: Icons.face_rounded,
                          highlight: true,
                        ),
                      ],
                      const SizedBox(height: 18),
                      Text(
                        entry.title,
                        style: const TextStyle(
                          fontSize: 24,
                          height: 1.25,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.5,
                          color: Color(0xFF17251A),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time_rounded,
                            size: 15,
                            color: Colors.black45,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            _fullDate(entry.date),
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 22),
                        child: Divider(height: 1),
                      ),
                      Text(
                        entry.body,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.9,
                          color: Color(0xFF465148),
                        ),
                      ),
                      if (entry.isMessage) ...[
                        const SizedBox(height: 25),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEAF3EC),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.check_circle_rounded,
                                color: SchoolTheme.green,
                                size: 21,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Marked as read. The teacher can see that '
                                  'you opened this message.',
                                  style: TextStyle(
                                    color: SchoolTheme.green,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}