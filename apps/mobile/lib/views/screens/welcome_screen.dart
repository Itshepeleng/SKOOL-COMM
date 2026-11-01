import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../app/school_theme.dart';
import '../widgets/school_widgets.dart';
import 'create_account_screen.dart';
import 'login_screen.dart';
import 'terms_and_conditions_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late final VideoPlayerController _videoController;
  final ScrollController _scrollController = ScrollController();

  bool _videoLoading = true;
  bool _videoReady = false;

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.asset(
      'assets/videos/welcome_background.mp4.mp4',
    );

    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    var videoReady = false;
    try {
      await _videoController.initialize();
      if (!mounted) return;

      await _videoController.setLooping(true);
      if (!mounted) return;

      await _videoController.setVolume(0);
      if (!mounted) return;

      await _videoController.play();
      videoReady = true;
    } catch (error, stackTrace) {
      debugPrint('Welcome video error: $error');
      debugPrintStack(stackTrace: stackTrace);
    } finally {
      if (mounted) {
        setState(() {
          _videoLoading = false;
          _videoReady = videoReady;
        });
      }
    }
  }

  @override
  void dispose() {
    _videoController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SchoolTheme.darkGreen,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              // Background video
              AnimatedBuilder(
                animation: _scrollController,
                builder: (context, child) {
                  final double opacity =
                      (1.0 -
                              (_scrollController.hasClients
                                  ? _scrollController.offset / 300.0
                                  : 0.0))
                          .clamp(0.0, 1.0)
                          .toDouble();

                  return Opacity(opacity: opacity, child: child);
                },
                child: _buildVideoBackground(),
              ),

              // Dark overlay
              Container(color: Colors.black.withValues(alpha: 0.48)),

              if (_videoLoading)
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    bottom: false,
                    child: LinearProgressIndicator(
                      minHeight: 2,
                      color: Colors.white,
                      backgroundColor: Colors.white24,
                    ),
                  ),
                ),

              // Welcome content
              SafeArea(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 30,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight - 60,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Wilgehof logo
                        Container(
                          width: 160,
                          height: 160,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.92),
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Image.asset(
                            'assets/images/wilgehof_crest.png',
                            fit: BoxFit.contain,
                            errorBuilder: (_, _, _) => const Icon(
                              Icons.school_rounded,
                              size: 80,
                              color: SchoolTheme.green,
                            ),
                          ),
                        ),

                        const SizedBox(height: 28),

                        const Text(
                          'WELCOME TO',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'Skool-Comm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w900,
                          ),
                        ),

                        const SizedBox(height: 12),

                        const Text(
                          'Connecting School, Parents & Learners',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 45),

                        // Login button
                        SchoolPrimaryButton(
                          label: 'Login',
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (_) => const LoginScreen(),
                            ),
                          ),
                        ),

                        const SizedBox(height: 14),

                        // Create account button
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: OutlinedButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (_) => const CreateAccountScreen(),
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              side: const BorderSide(
                                color: Colors.white,
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            child: const Text('Create Account'),
                          ),
                        ),

                        const SizedBox(height: 12),

                        TextButton(
                          onPressed: () =>
                              TermsAndConditionsScreen.open(context),
                          child: const Text(
                            'Terms & Conditions',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildVideoBackground() {
    if (!_videoReady || !_videoController.value.isInitialized) {
      return const ColoredBox(color: SchoolTheme.darkGreen);
    }

    final videoSize = _videoController.value.size;

    return SizedBox.expand(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: videoSize.width,
          height: videoSize.height,
          child: VideoPlayer(_videoController),
        ),
      ),
    );
  }
}
