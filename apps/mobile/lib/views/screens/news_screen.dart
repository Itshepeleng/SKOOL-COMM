import 'package:flutter/material.dart';

import '../../app/school_theme.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  static const _items = [
    (
      'Annual Athletics Sports Day announcements',
      '24 Sep 2026',
      'Join us for the annual athletics sports day. Learners should arrive in '
          'their sports uniform and bring water.',
    ),
    (
      'School Early Closure updates for Term 3',
      '20 Sep 2026',
      'The school will close early on 02 October. Please arrange collection '
          'for 12:00.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(title: const Text('Latest News')),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(14),
              children: [
                for (final item in _items)
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.only(bottom: 12),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color(0xFFE1E7E2)),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(14),
                      leading: const CircleAvatar(
                        backgroundColor: SchoolTheme.paleGreen,
                        child: Icon(
                          Icons.campaign_outlined,
                          color: SchoolTheme.green,
                        ),
                      ),
                      title: Text(
                        item.$1,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(item.$2),
                      ),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () => _showArticle(context, item.$1, item.$2, item.$3),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showArticle(
    BuildContext context,
    String title,
    String date,
    String body,
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
              title,
              style: const TextStyle(
                color: SchoolTheme.darkGreen,
                fontWeight: FontWeight.w800,
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 8),
            Text(date, style: const TextStyle(color: SchoolTheme.muted)),
            const SizedBox(height: 14),
            Text(body, style: const TextStyle(height: 1.4)),
            const SizedBox(height: 12),
            const Text(
              'Sample prototype announcement',
              style: TextStyle(color: SchoolTheme.muted, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}
