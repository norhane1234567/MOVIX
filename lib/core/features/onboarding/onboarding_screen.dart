import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../widgets/button.dart';
import '../auth/auth_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset(
              AppImages.onboardingBackground,
              fit: BoxFit.cover,
            ),
          ),

          /// PAGES
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [

              /// FIRST SCREEN 
              buildPage(
                image: AppImages.onboarding1,
                title:
                    "Your smart fitness companion for movement, strength, and progress.",
                subtitle: "Start Your Journey",
              ),

              /// SECOND SCREEN 
              buildPage(
                image: AppImages.onboarding2,
                title: "Train Smarter",
                subtitle: "Welcome to MOVIX",
              ),
            ],
          ),

          /// SKIP BUTTON
          Positioned(
            top: 60,
            left: 20,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  ),
                );
              },
              child: const Text(
                "SKIP",
                style: TextStyle(
                  color: Color(0xffA6FF00),
                  fontSize: 16,
                ),
              ),
            ),
          ),

          /// NEXT BUTTON
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: CustomButton(
              text: "Next",
              onPressed: () {
                if (currentPage == 1) {
                  /// GO TO AUTH SCREEN
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthScreen(),
                    ),
                  );
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  /// PAGE BUILDER
  Widget buildPage({
    required String image,
    required String title,
    required String subtitle,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Expanded(
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [

              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 120),
      ],
    );
  }
}