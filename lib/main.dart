import 'package:flutter/material.dart';
import 'core/features/splash/splash_screen.dart';

void main() {
  runApp(const MovixApp());
}

class MovixApp extends StatelessWidget {
  const MovixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}