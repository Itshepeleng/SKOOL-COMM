import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/dashboard_view_model.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({required this.viewModel, super.key});

  final DashboardViewModel viewModel;

  static const _messages = [
    _Message(
      sender: 'Mrs Dlamini (Teacher)',
      preview: 'Great, thank you!',
      time: '21 hr ago',
      initials: 'MD',
      archived: false,
    ),
    _Message(
      sender: 'School Admin',
      preview: 'School closes early at 30 Sep 2026',
      time: '3 days ago',
      initials: 'SA',
      archived: false,
    ),
    _Message(
      sender: 'Mrs Naidoo (Teacher)',
      preview: 'Homework reminder — please check the homework portal.',
      time: '1 hr ago',
      initials: 'MN',
      archived: false,
    ),
    _Message(
      sender: 'Principal',
      preview: "Welcome to Term 3. We're excited for a great term!",
      time: '20 days ago',
      initials: 'PR',
      archived: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: viewModel,
      builder: (context, _) {
        final visibleMessages = _messages.where(
          (message) =>
              message.archived == (viewModel.messageFolder == MessageFolder.archived),
        );

        return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
        leading: IconButton(
          tooltip: 'Back',
          onPressed: () => Navigator.of(context).maybePop(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: SegmentedButton<MessageFolder>(
              segments: const [
                ButtonSegment(
                  value: MessageFolder.inbox,
                  label: Text('Inbox'),
                ),
                ButtonSegment(
                  value: MessageFolder.archived,
                  label: Text('Archived'),
                ),
              ],
              selected: {viewModel.messageFolder},
              onSelectionChanged: (selection) =>
                  viewModel.selectMessageFolder(selection.first),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              itemCount: visibleMessages.length,
              separatorBuilder: (_, _) => const SizedBox(height: 9),
              itemBuilder: (context, index) {
                final message = visibleMessages.elementAt(index);
                return _MessageCard(
                  message: message,
                  onTap: () => _showMessage(context, message),
                );
              },
            ),
          ),
        ],
      ),
        );
      },
    );
  }

  static void _showMessage(BuildContext context, _Message message) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.fromLTRB(22, 8, 22, 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.sender,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: SchoolTheme.darkGreen,
              ),
            ),
            const SizedBox(height: 10),
            Text(message.preview),
            const SizedBox(height: 10),
            Text(
              message.time,
              style: const TextStyle(color: SchoolTheme.muted),
            ),
          ],
        ),
      ),
    );
  }
}

class _Message {
  const _Message({
    required this.sender,
    required this.preview,
    required this.time,
    required this.initials,
    required this.archived,
  });

  final String sender;
  final String preview;
  final String time;
  final String initials;
  final bool archived;
}

class _MessageCard extends StatelessWidget {
  const _MessageCard({required this.message, required this.onTap});

  final _Message message;
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
        leading: CircleAvatar(
          backgroundColor: SchoolTheme.paleGreen,
          child: Text(
            message.initials,
            style: const TextStyle(color: SchoolTheme.darkGreen),
          ),
        ),
        title: Text(
          message.sender,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          message.preview,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: Text(
          message.time,
          style: const TextStyle(fontSize: 10, color: SchoolTheme.muted),
        ),
      ),
    );
  }
}
