import 'package:flutter/material.dart';
import 'package:taskly/Onboarding_Screen/onboarding_screen.dart';
import 'package:taskly/Screen_Resolution/screen_height.dart';

import 'package:taskly/Splash_Screen.dart/Widgets/app_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const OnboardingScreen(),
            )));
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///DISPLAY'S APP LOGO
            const AppLogo(),
            Text(
              "Taskly",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: screenHeight(context: context, responsiveHeight: 0.01),
            ),
            Text(
              "Track tasks, achieve more",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
