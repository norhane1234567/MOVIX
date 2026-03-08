import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../widgets/button.dart';
import 'login_screen.dart';
import '../home/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// BACKGROUND
          Positioned.fill(
            child: Image.asset(
              AppImages.authBackground,
              fit: BoxFit.cover,
            ),
          ),

          /// CONTENT
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  const SizedBox(height: 110),

                  /// TITLE
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Color(0xffA6FF00),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// NAME
                  buildField("Name"),

                  const SizedBox(height: 20),

                  /// EMAIL
                  buildField("Email"),

                  const SizedBox(height: 20),

                  /// PASSWORD
                  buildField("Password"),

                  const SizedBox(height: 20),

                  /// CONFIRM PASSWORD
                  buildField("Confirm password"),

                  const SizedBox(height: 35),

                  /// SIGN UP BUTTON
                  CustomButton(
                    text: "sign up",
                    onPressed: () {

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );

                    },
                  ),

                  const SizedBox(height: 30),

                  /// OR
                  const Text(
                    "or",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 25),

                  /// SOCIAL ICONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Image.asset(
                        "assets/icons/instagram.png",
                        width: 35,
                      ),

                      const SizedBox(width: 20),

                      Image.asset(
                        "assets/icons/facebook.png",
                        width: 35,
                      ),

                      const SizedBox(width: 20),

                      Image.asset(
                        "assets/icons/x.png",
                        width: 35,
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  /// SIGN IN TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const Text(
                        "Do you have another account ? ",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "sign in",
                          style: TextStyle(
                            color: Color(0xffA6FF00),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// TEXT FIELD DESIGN
  Widget buildField(String hint) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffA6FF00)),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffA6FF00)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}