import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/View/Onboarding_Screen/Widgets/continue_button.dart';
import 'package:taskly/View/Onboarding_Screen/Widgets/my_page_indicator.dart';
import 'package:taskly/View/Onboarding_Screen/Widgets/my_page_view.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, onboardingController, child) {
                return const MyPageView();
              },
            ),
          ),
          Consumer(builder: (context, onboardingController, child) {
            return const MyPageIndicator();
          }),
          SizedBox(
            height: screenHeight(
              context: context,
              responsiveHeight: 0.101,
            ),
          ),
          Consumer(builder: (context, onBoardingController, child) {
            return const ContinueButton();
          }),
          SizedBox(
            height: screenHeight(context: context, responsiveHeight: 0.0223),
          ),
        ],
      ),
    );
  }
}
