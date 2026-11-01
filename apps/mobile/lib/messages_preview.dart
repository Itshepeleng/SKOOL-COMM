import 'package:flutter/material.dart';

import 'app/school_theme.dart';
import 'views/screens/messages_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Skool-Comm Messages Preview',
      debugShowCheckedModeBanner: false,
      theme: SchoolTheme.light,
      home: Scaffold(body: MessagesScreen(onBack: () {})),
    ),
  );
}
