import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' show ImageFilter;

import '../../app/school_theme.dart';
import '../../viewmodels/inbox_view_model.dart';
import '../../viewmodels/messages_view_model.dart';
import 'news_strip.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    required this.parentName,
    required this.onOpenPoints,
    required this.onOpenMessages,
    required this.onOpenAttendance,
    required this.onOpenReminders,
    required this.onOpenSettings,
    required this.onOpenCalendar,
    required this.onOpenProfile,
    this.parentAvatarUrl,
    this.inbox,
    this.news,
    this.onOpenNews,
    this.heroImageAsset = 'assets/images/school_gate.jpg',
    super.key,
  });

  final String parentName;
  final VoidCallback onOpenPoints;
  final VoidCallback onOpenMessages;
  final VoidCallback onOpenAttendance;
  final VoidCallback onOpenReminders;
  final VoidCallback onOpenSettings;
  final VoidCallback onOpenCalendar;
  final VoidCallback onOpenProfile;
  final String? parentAvatarUrl;
  final InboxViewModel? inbox;
  final MessagesViewModel? news;
  final VoidCallback? onOpenNews;
  final String heroImageAsset;

  static const _pageTop = Color(0xFFD3ECDD);
  static const _pageBottom = Color(0xFFFFEBD2);

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Stack(
        children: [
          // 1. Soft gradient page colour
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [_pageTop, _pageBottom],
                ),
              ),
            ),
          ),

          // 2. School photo behind everything, fading into the page colour
          Positioned.fill(
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    heroImageAsset,
                    fit: BoxFit.cover,
                    alignment: const Alignment(0.0, 0.18),
                    errorBuilder: (_, _, _) => Container(
                      color: SchoolTheme.paleGreen,
                      child: const Icon(
                        Icons.account_balance_rounded,
                        size: 74,
                        color: SchoolTheme.green,
                      ),
                    ),
                  ),
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x40000000),
                        Color(0x66104A2B),
                        Color(0xCC104A2B),
                      ],
                      stops: [0.0, 0.5, 1.0],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 3. Scrolling content
          Positioned.fill(
            child: ListView(
              padding: EdgeInsets.fromLTRB(14, topInset + 78, 14, 120),
              children: [
                const SizedBox(height: 70),
                Row(
                  children: [
                    Expanded(
                      child: _GlassTile(
                        title: 'Behavioural points',
                        icon: Icons.workspace_premium_outlined,
                        tint: SchoolTheme.paleGreen,
                        onTap: onOpenPoints,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _GlassTile(
                        title: 'Attendance Records',
                        icon: Icons.event_available_outlined,
                        iconColor: Colors.deepOrange,
                        tint: SchoolTheme.paleOrange,
                        onTap: onOpenAttendance,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _GlassTile(
                        title: 'Reminders',
                        icon: Icons.notifications_none,
                        iconColor: Colors.redAccent,
                        tint: const Color(0xFFFFD6DA),
                        onTap: onOpenReminders,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _GlassTile(
                        title: 'Messages',
                        icon: Icons.chat_bubble_outline,
                        iconColor: Colors.orange,
                        tint: const Color(0xFFFFF0C2),
                        onTap: onOpenMessages,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _GlassTile(
                        title: 'Settings',
                        icon: Icons.settings_outlined,
                        tint: SchoolTheme.paleGreen,
                        horizontal: true,
                        onTap: onOpenSettings,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _GlassTile(
                        title: 'Calendar',
                        icon: Icons.calendar_month_outlined,
                        tint: SchoolTheme.paleGreen,
                        horizontal: true,
                        onTap: onOpenCalendar,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                NewsStrip(
                  onDark: true,
                  inbox: inbox,
                  announcements: news,
                  onSeeAll: onOpenNews ?? () {},
                ),
              ],
            ),
          ),

          // 4. Glass header pinned on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(14, topInset + 10, 14, 0),
              child: _GlassSurface(
                radius: 26,
                blur: 20,
                tint: Colors.white.withValues(alpha: 0.32),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Wilgehof Primary',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          shadows: [
                            Shadow(color: Colors.black45, blurRadius: 6),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      parentName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        shadows: [Shadow(color: Colors.black45, blurRadius: 6)],
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: onOpenProfile,
                      child: CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.white,
                        child:
                            parentAvatarUrl != null &&
                                parentAvatarUrl!.isNotEmpty
                            ? ClipOval(
                                child: Image.network(
                                  parentAvatarUrl!,
                                  width: 38,
                                  height: 38,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, _, _) =>
                                      _parentAvatarFallback(),
                                ),
                              )
                            : _parentAvatarFallback(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _parentAvatarFallback() {
    return Text(
      parentName.trim().isEmpty ? 'P' : parentName.trim()[0].toUpperCase(),
      style: const TextStyle(
        color: SchoolTheme.green,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    );
  }
}

class _GlassTile extends StatelessWidget {
  const _GlassTile({
    required this.title,
    required this.icon,
    required this.tint,
    required this.onTap,
    this.iconColor = SchoolTheme.green,
    this.horizontal = false,
  });

  final String title;
  final IconData icon;
  final Color tint;
  final Color iconColor;
  final bool horizontal;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final label = Text(
      title,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textAlign: horizontal ? TextAlign.start : TextAlign.center,
      style: const TextStyle(
        fontSize: 12.5,
        fontWeight: FontWeight.w800,
        color: SchoolTheme.darkGreen,
      ),
    );

    return SizedBox(
      height: horizontal ? 72 : 92,
      child: _GlassSurface(
        radius: 20,
        blur: 16,
        tint: tint.withValues(alpha: 0.55),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
              child: horizontal
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon, color: iconColor, size: 26),
                        const SizedBox(width: 10),
                        Flexible(child: label),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon, color: iconColor, size: 28),
                        const SizedBox(height: 7),
                        label,
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GlassSurface extends StatelessWidget {
  const _GlassSurface({
    required this.radius,
    required this.blur,
    required this.tint,
    required this.child,
    this.padding = EdgeInsets.zero,
  });

  final double radius;
  final double blur;
  final Color tint;
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(radius);
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(color: tint, borderRadius: borderRadius),
          child: child,
        ),
      ),
    );
  }
}
