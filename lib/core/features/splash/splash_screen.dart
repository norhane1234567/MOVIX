import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../styles/colors.dart';
import '../../features/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// Background
          Positioned.fill(
            child: Image.asset(
              AppImages.background,
              fit: BoxFit.cover,
            ),
          ),

          /// Logo
          Center(
            child: Image.asset(
              AppImages.movixLogo,
              width: 200,
            ),
          ),

        ],
      ),
    );
  }
}