import 'package:flutter/material.dart';

import '../../app/school_theme.dart';
import '../../models/learner_profile.dart';
import '../../viewmodels/learner_view_model.dart';
import '../widgets/school_widgets.dart';

class MyChildrenScreen extends StatefulWidget {
  const MyChildrenScreen({
    required this.viewModel,
    required this.onOpenAttendance,
    required this.onOpenPoints,
    required this.onSelectTab,
    required this.onAddChild,
    this.ownsViewModel = false,
    super.key,
  });

  final LearnerViewModel viewModel;
  final ValueChanged<LearnerProfile> onOpenAttendance;
  final ValueChanged<LearnerProfile> onOpenPoints;
  final ValueChanged<int> onSelectTab;
  final VoidCallback onAddChild;
  final bool ownsViewModel;

  @override
  State<MyChildrenScreen> createState() => _MyChildrenScreenState();
}

class _MyChildrenScreenState extends State<MyChildrenScreen> {
  late final bool _ownsViewModel;

  @override
  void initState() {
    super.initState();
    _ownsViewModel = widget.ownsViewModel;
    if (widget.viewModel.hasAuthenticatedUser) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.viewModel.loadChildren();
      });
    }
  }

  @override
  void dispose() {
    if (_ownsViewModel) widget.viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.viewModel,
      builder: (context, _) {
        final viewModel = widget.viewModel;
        return Scaffold(
          appBar: AppBar(
            title: const Text('My Children'),
            leading: IconButton(
              tooltip: 'Back',
              onPressed: () => Navigator.of(context).maybePop(),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: SchoolTheme.paleGreen,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.people_outline, color: SchoolTheme.green),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Here are your children linked to your account.',
                              style: TextStyle(
                                color: SchoolTheme.darkGreen,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Click on a child to view their details, progress and more.',
                              style: TextStyle(
                                color: SchoolTheme.muted,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 52),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    onPressed: widget.onAddChild,
                    icon: const Icon(Icons.person_add_alt_1),
                    label: const Text('Add Child'),
                  ),
                ),
                const SizedBox(height: 20),
                if (viewModel.isLoading && viewModel.children.isEmpty)
                  const Center(child: CircularProgressIndicator())
                else if (viewModel.errorMessage != null &&
                    viewModel.children.isEmpty)
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        viewModel.errorMessage!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ),
                  )
                else if (viewModel.children.isEmpty)
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'No learner profiles are linked to this account yet.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: SchoolTheme.muted),
                      ),
                    ),
                  )
                else ...[
                  if (viewModel.errorMessage != null)
                    Text(
                      viewModel.errorMessage!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  for (final child in viewModel.children)
                    _ChildCard(
                      name: child.fullName,
                      grade: child.gradeClassLabel,
                      onTap: () => _showChildDetails(context, child),
                    ),
                ],
              ],
            ),
          ),
          bottomNavigationBar: SchoolBottomNavigation(
            selectedIndex: 4,
            onSelected: widget.onSelectTab,
          ),
        );
      },
    );
  }

  void _showChildDetails(BuildContext context, LearnerProfile child) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(child.fullName),
        content: Text(
          '${child.gradeClassLabel}\n'
          'Relationship: ${child.relationship}\nActive',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              widget.onOpenAttendance(child);
            },
            child: const Text('Attendance'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
              widget.onOpenPoints(child);
            },
            child: const Text('Behavioural points'),
          ),
        ],
      ),
    );
  }
}

class _ChildCard extends StatelessWidget {
  const _ChildCard({
    required this.name,
    required this.grade,
    required this.onTap,
  });

  final String name;
  final String grade;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 48,
                backgroundColor: SchoolTheme.paleGreen,
                child: Icon(
                  Icons.person_rounded,
                  size: 56,
                  color: SchoolTheme.green,
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: SchoolTheme.darkGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      '$grade · Term 3, 2026',
                      style: const TextStyle(
                        color: SchoolTheme.muted,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: SchoolTheme.paleGreen,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Active',
                        style: TextStyle(
                          color: SchoolTheme.darkGreen,
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}