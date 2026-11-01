import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../app/school_theme.dart';
import '../../viewmodels/auth_view_model.dart';
import '../../viewmodels/learner_view_model.dart';
import '../widgets/school_widgets.dart';
import '../widgets/school_loading_screen.dart';
import 'main_navigation_screen.dart';

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
  final _idNumberController = TextEditingController();
  final _verificationCodeController = TextEditingController();
  late final LearnerViewModel _viewModel;
  Uint8List? _profileImageBytes;
  String? _profileImageContentType;
  String? _profileImageError;
  bool _isPickingImage = false;
  DateTime? _dateOfBirth;
  String _relationship = 'Father';
  String? _grade;
  String? _className;

  static const _grades = [
    'Grade R', 'Grade 1', 'Grade 2', 'Grade 3',
    'Grade 4', 'Grade 5', 'Grade 6', 'Grade 7',
  ];
  static const _classes = ['A', 'B', 'C', 'D', 'E', 'F'];
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
    _idNumberController.dispose();
    if (_ownsViewModel) _viewModel.dispose();
    super.dispose();
    _verificationCodeController.dispose();
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
      grade: _grade ?? '',
      className: '${(_grade ?? '').replaceFirst('Grade ', '')}${_className ?? ''}',
      dateOfBirth: _dateOfBirth!,
      idNumber: _idNumberController.text,
      relationship: _relationship,
      verificationCode: _verificationCodeController.text.trim(),
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

    String? uploadMessage;
    final imageBytes = _profileImageBytes;
    if (imageBytes != null) {
      final learnerId = _viewModel.selectedLearnerId;
      final contentType = _profileImageContentType;
      if (learnerId == null) {
        uploadMessage =
            'The child profile was saved, but its picture could not be linked.';
      } else if (contentType == null) {
        uploadMessage =
            'The child profile was saved, but the selected image format is unsupported.';
      } else {
        uploadMessage = await _viewModel.uploadLearnerAvatar(
          learnerId: learnerId,
          bytes: imageBytes,
          contentType: contentType,
        );
      }
    }
    if (!mounted) return;
    final messages = [
      _viewModel.statusMessage,
      ?uploadMessage,
    ].whereType<String>().where((message) => message.isNotEmpty).toList();
    if (messages.isNotEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(messages.join('\n'))));
    }
    if (widget.returnToChildren) {
      Navigator.of(context).pop();
      return;
    }
    // The next route takes ownership of this view model to preserve the saved learner.
    _ownsViewModel = false;
    final navigator = Navigator.of(context);
    final learnerViewModel = _viewModel;
    navigator.pushAndRemoveUntil<void>(
      MaterialPageRoute<void>(
        builder: (_) =>
            const SchoolLoadingScreen(message: 'Fetching your dashboard...'),
      ),
      (_) => false,
    );
    await learnerViewModel.loadChildren();
    if (!navigator.mounted) {
      learnerViewModel.dispose();
      return;
    }
    navigator.pushReplacement<void, void>(
      MaterialPageRoute<void>(
        builder: (_) => MainNavigationScreen(
          learnerViewModel: learnerViewModel,
          childrenAlreadyLoaded: true,
        ),
      ),
    );
  }

  Future<void> _pickProfileImage() async {
    setState(() {
      _isPickingImage = true;
      _profileImageError = null;
    });
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
      );
      if (image == null || !mounted) return;

      final bytes = await image.readAsBytes();
      final extension = image.name.split('.').last.toLowerCase();
      final contentType = switch (image.mimeType?.toLowerCase()) {
        'image/jpeg' => 'image/jpeg',
        'image/png' => 'image/png',
        'image/webp' => 'image/webp',
        _ => switch (extension) {
          'jpg' || 'jpeg' => 'image/jpeg',
          'png' => 'image/png',
          'webp' => 'image/webp',
          _ => null,
        },
      };
      if (bytes.isEmpty || bytes.length > 5 * 1024 * 1024) {
        setState(
          () => _profileImageError = 'Choose an image smaller than 5 MB.',
        );
      } else if (contentType == null) {
        setState(
          () => _profileImageError = 'Choose a JPEG, PNG, or WebP image.',
        );
      } else {
        setState(() {
          _profileImageBytes = bytes;
          _profileImageContentType = contentType;
        });
      }
    } on Exception catch (error) {
      if (mounted) {
        setState(() => _profileImageError = 'Unable to select image: $error');
      }
    } finally {
      if (mounted) setState(() => _isPickingImage = false);
    }
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
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: SchoolTheme.paleGreen,
                          backgroundImage: _profileImageBytes == null
                              ? null
                              : MemoryImage(_profileImageBytes!),
                          child: _profileImageBytes == null
                              ? const Icon(
                                  Icons.person_outline,
                                  color: SchoolTheme.green,
                                )
                              : null,
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Profile picture (optional)',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                'JPEG, PNG, or WebP · up to 5 MB',
                                style: TextStyle(
                                  color: SchoolTheme.muted,
                                  fontSize: 12,
                                ),
                              ),
                              TextButton.icon(
                                onPressed: _isPickingImage
                                    ? null
                                    : _pickProfileImage,
                                icon: _isPickingImage
                                    ? const SizedBox.square(
                                        dimension: 16,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : const Icon(Icons.add_a_photo_outlined),
                                label: Text(
                                  _profileImageBytes == null
                                      ? 'Add picture'
                                      : 'Change picture',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (_profileImageError != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        _profileImageError!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 12,
                        ),
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
                  _dropdownField(
                    label: 'Grade',
                    hint: 'Select grade',
                    options: _grades,
                    value: _grade,
                    onChanged: (v) => setState(() => _grade = v),
                  ),
                  _dropdownField(
                    label: 'Class',
                    hint: 'Select class',
                    options: _classes,
                    value: _className,
                    onChanged: (v) => setState(() => _className = v),
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
                    controller: _verificationCodeController,
                    label: 'School Verification Code',
                    hint: 'Enter the code provided by your school',

                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Enter your school verification code';
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
                    isLoading:
                        _viewModel.isLoading || _viewModel.isUploadingAvatar,
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

  Widget _dropdownField({
    required String label,
    required String hint,
    required List<String> options,
    required String? value,
    required ValueChanged<String?> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 7),
          DropdownButtonFormField<String>(
            initialValue: value,
            isExpanded: true,
            hint: Text(hint),
            items: options
                .map((o) => DropdownMenuItem(value: o, child: Text(o)))
                .toList(),
            onChanged: onChanged,
            validator: (v) => v == null ? 'Please select an option' : null,
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
      // A primary school learner is roughly 4 to 16 years old.
      firstDate: DateTime(today.year - 16, today.month, today.day),
      lastDate: DateTime(today.year - 4, today.month, today.day),
      helpText: 'Select date of birth',
    );
    if (selected != null) setState(() => _dateOfBirth = selected);
  }
}