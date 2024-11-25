import 'package:flutter/material.dart';
import 'package:taskly/View/Login_Screen/login_screen.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class LoginTypeButton extends StatelessWidget {
  final String buttonType;
  const LoginTypeButton({super.key, required this.buttonType});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            minimumSize: WidgetStatePropertyAll(
              Size(
                double.infinity,
                screenHeight(context: context, responsiveHeight: 0.05),
              ),
            ),
          ),
      onPressed: () {
        if (buttonType == "Sign up") {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginScreen(
                title: "Setup with Taskly",
                description: "Create your account and feel the benefits",
              ),
            ),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginScreen(
                title: "Welcome Back!",
                description: "Your work faster and structured with Todyapp",
              ),
            ),
          );
        }
      },
      child: Text(
        buttonType,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: screenWidth(
                context: context,
                responsiveWidth: 0.041,
              ),
            ),
      ),
    );
  }
}
