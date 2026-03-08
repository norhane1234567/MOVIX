import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffA6FF00),
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),

        onPressed: onPressed,

        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}