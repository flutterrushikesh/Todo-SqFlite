import 'package:flutter/material.dart';
import 'package:taskly/View/Home_Screen/home_screen.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class LoginButton extends StatelessWidget {
  final String pageTitle;
  const LoginButton({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      },
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            minimumSize: WidgetStatePropertyAll(
              Size(
                double.infinity,
                screenHeight(context: context, responsiveHeight: 0.05),
              ),
            ),
          ),
      child: Text(
        pageTitle == "Setup with Taskly" ? "Sign up" : "Login",
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
