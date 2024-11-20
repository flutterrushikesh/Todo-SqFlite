import 'package:flutter/material.dart';
import 'package:taskly/Screen_Resolution/screen_height.dart';
import 'package:taskly/Screen_Resolution/screen_width.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            // clipBehavior: Clip.none
            children: [
              Image.asset(
                'assets/images/Onboarding 1.png',
                width: double.infinity,
              ),
              Positioned(
                top: screenHeight(context: context, responsiveHeight: 0.36),
                child: Text(
                  'Your convenience in \nmaking a todo list',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth(context: context, responsiveWidth: 0.025),
              vertical: screenHeight(
                context: context,
                responsiveHeight: 0.02,
              ),
            ),
            child: Text(
              "Here's a mobile platform that helps you create task or to list so that it can help you in \nevery job easier and faster",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: const Color.fromRGBO(46, 48, 54, 1),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
