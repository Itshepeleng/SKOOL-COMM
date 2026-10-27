import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/auth_view_model.dart';
import '../../viewmodels/learner_view_model.dart';
import '../widgets/school_widgets.dart';
import 'attendance_screen.dart';
import 'main_navigation_screen.dart';
import 'my_children_screen.dart';

class ChildProfileScreen extends StatefulWidget {
  const ChildProfileScreen({
    super.key,
    this.viewModel,
    this.parentAuthId,
    this.parentFirstName,
    this.parentLastName,
    this.parentEmail,
    this.parentPhone,
    this.returnToChildren = false,
    this.ownsViewModel = false,
  });

  final LearnerViewModel? viewModel;
  final String? parentAuthId;
  final String? parentFirstName;
  final String? parentLastName;
  final String? parentEmail;
  final String? parentPhone;
  final bool returnToChildren;
  final bool ownsViewModel;

  @override
  State<ChildProfileScreen> createState() => _ChildProfileScreenState();
}

class _ChildProfileScreenState extends State<ChildProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _gradeController = TextEditingController();
  final _classController = TextEditingController();
  final _idNumberController = TextEditingController();
  late final LearnerViewModel _viewModel;
  DateTime? _dateOfBirth;
  String _relationship = 'Father';
  bool _ownsViewModel = false;

  @override
  void initState() {
    super.initState();
    final providedViewModel = widget.viewModel;
    if (providedViewModel == null) {
      _viewModel = LearnerViewModel(Supabase.instance.client);
      _ownsViewModel = true;
    } else {
      _viewModel = providedViewModel;
      _ownsViewModel = widget.ownsViewModel;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _gradeController.dispose();
    _classController.dispose();
    _idNumberController.dispose();
    if (_ownsViewModel) _viewModel.dispose();
    super.dispose();
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;
    if (_dateOfBirth == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select the learner date of birth.'),
        ),
      );
      return;
    }
    final saved = await _viewModel.registerLearner(
      firstName: _nameController.text,
      lastName: _surnameController.text,
      grade: _gradeController.text,
      className: _classController.text,
      dateOfBirth: _dateOfBirth!,
      idNumber: _idNumberController.text,
      relationship: _relationship,
      parentAuthId: widget.parentAuthId,
      parentFirstName: widget.parentFirstName,
      parentLastName: widget.parentLastName,
      parentEmail: widget.parentEmail,
      parentPhone: widget.parentPhone,
    );
    if (!mounted) return;
    if (!saved) {
      final colorScheme = Theme.of(context).colorScheme;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: colorScheme.error,
          content: Text(
            _viewModel.errorMessage ?? 'Unable to save the learner profile.',
            style: TextStyle(color: colorScheme.onError),
          ),
        ),
      );
      return;
    }
    final statusMessage = _viewModel.statusMessage;
    if (statusMessage != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(statusMessage)));
    }
    if (widget.returnToChildren) {
      Navigator.of(context).pop();
      return;
    }
    // The next route takes ownership of this view model to preserve the saved learner.
    _ownsViewModel = false;
    final navigator = Navigator.of(context);
    final learnerViewModel = _viewModel;
    navigator.pushAndRemoveUntil(
      MaterialPageRoute<void>(
        builder: (_) => MyChildrenScreen(
          viewModel: learnerViewModel,
          ownsViewModel: true,
          onOpenAttendance: (child) => navigator.push(
            MaterialPageRoute<void>(
              builder: (_) => AttendanceScreen(
                child: child,
                loadAttendance: (learnerId) async {
                  final loaded = await learnerViewModel.loadAttendanceRecords(
                    learnerId,
                  );
                  if (!loaded ||
                      learnerViewModel.attendanceLearnerId != learnerId) {
                    throw StateError(
                      learnerViewModel.attendanceErrorMessage ??
                          'Unable to load attendance records.',
                    );
                  }
                  return learnerViewModel.attendanceRecords;
                },
              ),
            ),
          ),
          onOpenPoints: (_) => navigator.pushAndRemoveUntil(
            MaterialPageRoute<void>(
              builder: (_) => MainNavigationScreen(
                initialTab: 1,
                initialChildren: learnerViewModel.children,
              ),
            ),
            (_) => false,
          ),
          onAddChild: () => navigator.push(
            MaterialPageRoute<void>(
              builder: (_) => ChildProfileScreen(
                viewModel: learnerViewModel,
                returnToChildren: true,
              ),
            ),
          ),
          onSelectTab: (index) => navigator.pushAndRemoveUntil(
            MaterialPageRoute<void>(
              builder: (_) => MainNavigationScreen(
                initialTab: index,
                initialChildren: learnerViewModel.children,
              ),
            ),
            (_) => false,
          ),
        ),
      ),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (context, _) => Scaffold(
        appBar: AppBar(title: const Text('Wilgehof Primary')),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 14),
                  const ScreenIntro(
                    title: 'Create Child Profile',
                    subtitle:
                        "Add your child's details to your school profile.",
                  ),
                  const SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: SchoolTheme.paleGreen,
                          child: Icon(
                            Icons.person_outline,
                            color: SchoolTheme.green,
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Profile picture (optional)',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Image upload can be added when storage is configured.',
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
                  const SizedBox(height: 20),
                  if (_viewModel.errorMessage != null)
                    StatusBanner(
                      message: _viewModel.errorMessage!,
                      isError: true,
                    ),
                  _profileField(
                    controller: _nameController,
                    label: 'First name',
                    hint: "Enter child's name",
                    validator: _required,
                  ),
                  _profileField(
                    controller: _surnameController,
                    label: 'Last name',
                    hint: "Enter child's surname",
                    validator: _required,
                  ),
                  _profileField(
                    controller: _gradeController,
                    label: 'Grade',
                    hint: 'Enter learner grade',
                    validator: _required,
                  ),
                  _profileField(
                    controller: _classController,
                    label: 'Class',
                    hint: 'Enter learner class',
                    validator: _required,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Date of birth',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 7),
                        FormField<DateTime>(
                          validator: (_) => _dateOfBirth == null
                              ? 'Select the learner date of birth'
                              : null,
                          builder: (field) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              OutlinedButton.icon(
                                onPressed: _selectDateOfBirth,
                                icon: const Icon(Icons.calendar_month_outlined),
                                label: Text(
                                  _dateOfBirth == null
                                      ? 'Select date of birth'
                                      : '${_dateOfBirth!.day.toString().padLeft(2, '0')}/'
                                            '${_dateOfBirth!.month.toString().padLeft(2, '0')}/'
                                            '${_dateOfBirth!.year}',
                                ),
                              ),
                              if (field.errorText != null)
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    field.errorText!,
                                    style: TextStyle(
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  _profileField(
                    controller: _idNumberController,
                    label: 'ID number',
                    hint: 'Enter 13-digit ID number',
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null ||
                          !RegExp(r'^\d{13}$').hasMatch(value.trim())) {
                        return 'Enter a 13-digit ID number';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: DropdownButtonFormField<String>(
                      initialValue: _relationship,
                      decoration: const InputDecoration(
                        labelText: 'Relationship to learner',
                      ),
                      items: AuthViewModel.guardianRelationships
                          .map(
                            (relationship) => DropdownMenuItem(
                              value: relationship,
                              child: Text(relationship),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          setState(() => _relationship = value);
                        }
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4, bottom: 20),
                    child: Text(
                      "The learner ID number is sent to Supabase only for the "
                      "secure duplicate check and learner registration.",
                      style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
                    ),
                  ),
                  SchoolPrimaryButton(
                    label: 'Submit',
                    isLoading: _viewModel.isLoading,
                    onPressed: _saveProfile,
                  ),
                  const SizedBox(height: 12),
                  const Center(
                    child: Text(
                      "Your child's details are kept private and secure.",
                      style: TextStyle(color: SchoolTheme.muted, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required String? Function(String?) validator,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 7),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            decoration: InputDecoration(hintText: hint),
            validator: validator,
          ),
        ],
      ),
    );
  }

  String? _required(String? value) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return null;
  }

  Future<void> _selectDateOfBirth() async {
    final today = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate:
          _dateOfBirth ?? DateTime(today.year - 10, today.month, today.day),
      firstDate: DateTime(1900),
      lastDate: today,
    );
    if (selected != null) setState(() => _dateOfBirth = selected);
  }
}
