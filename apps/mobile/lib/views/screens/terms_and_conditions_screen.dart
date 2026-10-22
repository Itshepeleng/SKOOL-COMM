import 'package:flutter/material.dart';

import '../../app/school_theme.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  static void open(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => const TermsAndConditionsScreen()),
    );
  }

  static const _sections = [
    (
      '1. About these terms',
      'These Terms and Conditions govern your use of the Skool-Comm mobile '
          'application (the “App”), which supports communication between '
          'Wilgehof Primary School and parents or guardians. By creating an '
          'account or using the App, you agree to these terms. If you do not '
          'agree, do not create an account or use the App.',
    ),
    (
      '2. Who may use the App',
      'The App is intended for parents and legal guardians of learners '
          'associated with the school. You must provide information that is '
          'accurate and keep it up to date. You may only add or view learner '
          'information where you are authorised to do so.',
    ),
    (
      '3. Your account',
      'You are responsible for keeping your sign-in details confidential and '
          'for activity carried out through your account. Do not share your '
          'password or allow another person to use your account. Contact the '
          'school through its usual channels if you believe your account has '
          'been accessed without permission.',
    ),
    (
      '4. Appropriate use',
      'Use the App lawfully and respectfully. You must not misuse the App, '
          'attempt to access another person’s account or information, interfere '
          'with its operation, or submit information that is false, unlawful, '
          'or harmful to others.',
    ),
    (
      '5. School and learner information',
      'The App may display school announcements, reminders, events, attendance '
          'records, behavioural points, and information about learners linked '
          'to your account. Treat information about learners and other families '
          'as confidential. Do not copy, publish, or share it with people who '
          'are not authorised to receive it.',
    ),
    (
      '6. Information and privacy',
      'Information you provide or access through the App may include contact '
          'details and information about learners. It is used to support the '
          'App’s school-parent communication features and is subject to '
          'applicable privacy requirements and the school’s relevant privacy '
          'notices and practices. Do not enter information about another '
          'person unless you are authorised to do so.',
    ),
    (
      '7. Availability and information',
      'The App is provided to support communication and access to school '
          'information. Features may change or be unavailable from time to '
          'time. While reasonable care is taken, information may be delayed, '
          'incomplete, or require confirmation with the school. The App is not '
          'an emergency service; use the school’s usual contact channels for '
          'urgent matters.',
    ),
    (
      '8. Ownership',
      'The App and its content are owned by or used with permission by the '
          'school or their respective rights holders. You may use the App for '
          'its intended personal, school-related purpose, but may not copy, '
          'modify, or commercially use its content without permission, except '
          'where permitted by law.',
    ),
    (
      '9. Access and changes',
      'The school may restrict or suspend access where necessary to protect '
          'users, learner information, or the operation of the App. These '
          'terms may be updated from time to time. The current version will be '
          'available in the App; continued use after an update means you accept '
          'the updated terms.',
    ),
    (
      '10. Applicable law and contact',
      'These terms are subject to the laws of South Africa, together with any '
          'mandatory protections that apply. For questions about these terms '
          'or your access, contact Wilgehof Primary School through its usual '
          'communication channels.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms & Conditions')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
          children: [
            const Text(
              'Skool-Comm',
              style: TextStyle(
                color: SchoolTheme.darkGreen,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Effective date: 22 October 2026',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Please read these terms before creating an account or using '
              'Skool-Comm.',
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(height: 20),
            for (final section in _sections) ...[
              Text(
                section.$1,
                style: const TextStyle(
                  color: SchoolTheme.darkGreen,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(section.$2, style: const TextStyle(height: 1.5)),
              const SizedBox(height: 18),
            ],
          ],
        ),
      ),
    );
  }
}
