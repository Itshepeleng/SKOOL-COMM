import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/inbox_view_model.dart';

/// Shows the "new message" popup over whatever screen the parent is on.
Future<void> showIncomingMessagePopup(
  BuildContext context,
  InboxMessage message,
  InboxViewModel inbox,
) {
  return showGeneralDialog<void>(
    context: context,
    barrierDismissible: false,
    barrierLabel: 'New message',
    barrierColor: Colors.black54,
    transitionDuration: const Duration(milliseconds: 550),
    pageBuilder: (_, _, _) => _MessagePopup(message: message, inbox: inbox),
    transitionBuilder: (_, animation, _, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.elasticOut,
        reverseCurve: Curves.easeIn,
      );
      return FadeTransition(
        opacity: animation,
        child: ScaleTransition(
          scale: curved,
          child: SlideTransition(
            position: Tween(begin: const Offset(0, -0.25), end: Offset.zero)
                .animate(curved),
            child: child,
          ),
        ),
      );
    },
  );
}

class _MessagePopup extends StatefulWidget {
  const _MessagePopup({required this.message, required this.inbox});

  final InboxMessage message;
  final InboxViewModel inbox;

  @override
  State<_MessagePopup> createState() => _MessagePopupState();
}

class _MessagePopupState extends State<_MessagePopup>
    with SingleTickerProviderStateMixin {
  late final AnimationController _bounce;
  bool _opened = false;
  bool _saving = false;

  @override
  void initState() {
    super.initState();
    _bounce = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _bounce.dispose();
    super.dispose();
  }

  Future<void> _read() async {
    setState(() => _saving = true);
    await widget.inbox.markRead(widget.message);
    if (!mounted) return;
    setState(() {
      _saving = false;
      _opened = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: math.min(MediaQuery.sizeOf(context).width - 40, 380),
          constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.75,
          ),
          padding: const EdgeInsets.fromLTRB(22, 26, 22, 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 30,
                offset: Offset(0, 12),
              ),
            ],
          ),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOutCubic,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              child: _opened ? _openedView() : _sealedView(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sealedView() {
    return Column(
      key: const ValueKey('sealed'),
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedBuilder(
          animation: _bounce,
          builder: (_, child) => Transform.translate(
            offset: Offset(0, -10 * Curves.easeInOut.transform(_bounce.value)),
            child: Transform.rotate(
              angle: (_bounce.value - 0.5) * 0.12,
              child: child,
            ),
          ),
          child: const _Envelope(),
        ),
        const SizedBox(height: 18),
        Text(
          widget.message.sender.isEmpty
              ? 'NEW MESSAGE FROM SCHOOL'
              : 'NEW MESSAGE FROM ${widget.message.sender.toUpperCase()}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: SchoolTheme.orange,
            fontWeight: FontWeight.w800,
            fontSize: 11,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.message.title,
          textAlign: TextAlign.center,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: SchoolTheme.darkGreen,
            fontWeight: FontWeight.w800,
            fontSize: 19,
          ),
        ),
        if (widget.message.learnerName.isNotEmpty) ...[
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.face_rounded,
                  size: 16, color: SchoolTheme.green),
              const SizedBox(width: 5),
              Text(
                'About ${widget.message.learnerName}',
                style: const TextStyle(
                  color: SchoolTheme.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: FilledButton.icon(
            onPressed: _saving ? null : _read,
            icon: _saving
                ? const SizedBox.square(
                    dimension: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.mark_email_read_outlined),
            label: const Text('Read message'),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Later'),
        ),
      ],
    );
  }

  Widget _openedView() {
    return Column(
      key: const ValueKey('opened'),
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 18,
              backgroundColor: SchoolTheme.paleGreen,
              child: Icon(Icons.drafts_outlined, color: SchoolTheme.green),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                widget.message.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: SchoolTheme.darkGreen,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        if (widget.message.sender.isNotEmpty) ...[
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.person_rounded,
                  size: 15, color: SchoolTheme.orange),
              const SizedBox(width: 4),
              Text(
                'From ${widget.message.sender}',
                style: const TextStyle(
                  color: SchoolTheme.orange,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 14),
        Flexible(
          child: SingleChildScrollView(
            child: Text(
              widget.message.body,
              style: const TextStyle(height: 1.45, fontSize: 14),
            ),
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            color: SchoolTheme.paleGreen,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            children: [
              Icon(Icons.check_circle, size: 16, color: SchoolTheme.green),
              SizedBox(width: 8),
              Text(
                'Saved to News',
                style: TextStyle(
                  color: SchoolTheme.darkGreen,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Done'),
          ),
        ),
      ],
    );
  }
}

/// Sealed envelope with a wax seal.
class _Envelope extends StatelessWidget {
  const _Envelope();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 90,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: SchoolTheme.paleOrange,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: SchoolTheme.orange, width: 2),
            ),
          ),
          CustomPaint(size: const Size(120, 90), painter: _FlapPainter()),
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: SchoolTheme.green,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
            ),
            child: const Icon(Icons.school, color: Colors.white, size: 18),
          ),
        ],
      ),
    );
  }
}

class _FlapPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = SchoolTheme.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    final path = Path()
      ..moveTo(4, 6)
      ..lineTo(size.width / 2, size.height * 0.55)
      ..lineTo(size.width - 4, 6);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Replaces the plain ListTiles: cards with an accent strip.
/// Unread messages get an orange glow and dot.
class InboxCards extends StatelessWidget {
  const InboxCards({required this.messages, this.onTap, super.key});

  final List<InboxMessage> messages;
  final ValueChanged<InboxMessage>? onTap;

  @override
  Widget build(BuildContext context) {
    if (messages.isEmpty) return const SizedBox.shrink();
    return Column(
      children: [for (final m in messages) _InboxCard(message: m, onTap: onTap)],
    );
  }
}

class _InboxCard extends StatelessWidget {
  const _InboxCard({required this.message, this.onTap});

  final InboxMessage message;
  final ValueChanged<InboxMessage>? onTap;

  @override
  Widget build(BuildContext context) {
    final unread = !message.isRead;
    final accent = unread ? SchoolTheme.orange : SchoolTheme.green;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {
          if (onTap != null) {
            onTap!(message);
          } else {
            _showBody(context);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: unread ? const Color(0xFFFFF9E9) : Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: unread ? SchoolTheme.orange : const Color(0xFFE1E7E2),
            ),
            boxShadow: unread
                ? [
                    BoxShadow(
                      color: SchoolTheme.orange.withValues(alpha: 0.25),
                      blurRadius: 12,
                    ),
                  ]
                : null,
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
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              unread
                                  ? Icons.mark_email_unread_outlined
                                  : Icons.drafts_outlined,
                              size: 16,
                              color: accent,
                            ),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                message.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 13,
                                ),
                              ),
                            ),
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
                        if (message.sender.isNotEmpty)
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              'From ${message.sender}',
                              style: TextStyle(
                                color: accent,
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        const SizedBox(height: 6),
                        Text(
                          message.body,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: SchoolTheme.muted,
                            fontSize: 12,
                            height: 1.3,
                          ),
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

  void _showBody(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (_) => Padding(
        padding: const EdgeInsets.fromLTRB(22, 8, 22, 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.title,
              style: const TextStyle(
                color: SchoolTheme.darkGreen,
                fontWeight: FontWeight.w800,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 12),
            Text(message.body, style: const TextStyle(height: 1.4)),
          ],
        ),
      ),
    );
  }
}