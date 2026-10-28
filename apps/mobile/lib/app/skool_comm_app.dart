import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../views/screens/main_navigation_screen.dart';
import '../views/screens/welcome_screen.dart';
import 'school_theme.dart';

class SkoolCommApp extends StatelessWidget {
  const SkoolCommApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        final screenWidth = MediaQuery.of(context).size.width;

        // On a real phone or a narrow window, show the app normally.
        if (screenWidth < 600) return child!;

        // iPhone 13 logical size
        const phoneWidth = 390.0;
        const phoneHeight = 844.0;
        const bezel = 12.0;

        return Container(
          color: const Color(0xFFE0E0E0),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: FittedBox(
            fit: BoxFit.scaleDown, // shrinks the phone if the window is short
            child: Container(
              width: phoneWidth + bezel * 2,
              height: phoneHeight + bezel * 2,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(60),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 24,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(bezel),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(48),
                child: Stack(
                  children: [
                    // The app, told it is on a 390 x 844 screen
                    MediaQuery(
                      data: MediaQuery.of(context).copyWith(
                        size: const Size(phoneWidth, phoneHeight),
                        padding: const EdgeInsets.only(top: 47, bottom: 20),
                        viewPadding: const EdgeInsets.only(top: 47, bottom: 20),
                      ),
                      child: child!,
                    ),
                    // Notch
                    Positioned(
                      top: 0,
                      left: (phoneWidth - 160) / 2,
                      child: IgnorePointer(
                        child: Container(
                          width: 160,
                          height: 32,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Home indicator bar
                    Positioned(
                      bottom: 8,
                      left: (phoneWidth - 134) / 2,
                      child: IgnorePointer(
                        child: Container(
                          width: 134,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      title: 'Skool-Comm',
      debugShowCheckedModeBanner: false,
      theme: SchoolTheme.light,
      home: Supabase.instance.client.auth.currentSession == null
          ? const WelcomeScreen()
          : const MainNavigationScreen(),
    );
  }
}