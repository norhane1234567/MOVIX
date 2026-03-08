import 'package:flutter/material.dart';
import '../../constants/app_images.dart';
import '../../widgets/button.dart';
import 'signup_screen.dart';
import '../home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                /// TITLE
                const Text(
                  "Log in",
                  style: TextStyle(
                    color: Color(0xffA6FF00),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                /// NAME FIELD
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Name",
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
                ),

                const SizedBox(height: 20),

                /// PASSWORD FIELD
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
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
                ),

                const SizedBox(height: 15),

                /// REMEMBER + FORGET PASSWORD
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          activeColor: const Color(0xffA6FF00),
                        ),
                        const Text(
                          "Remmember me",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),

                    const Text(
                      "forget password",
                      style: TextStyle(
                        color: Color(0xffA6FF00),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// SIGN IN BUTTON
                CustomButton(
                  text: "sign in",
                  onPressed: () {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );

                  },
                ),

                const SizedBox(height: 25),

                /// OR
                const Text(
                  "or",
                  style: TextStyle(
                    color: Colors.white70,
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

                const SizedBox(height: 60),

                /// SIGN UP TEXT
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    const Text(
                      "donot have an account ? ",
                      style: TextStyle(color: Colors.white54),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "sign up",
                        style: TextStyle(
                          color: Color(0xffA6FF00),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}