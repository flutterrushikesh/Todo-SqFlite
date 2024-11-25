import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taskly/Controller/onboarding_controller.dart';

class MyPageIndicator extends StatelessWidget {
  const MyPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: Provider.of<OnboardingController>(context).pageController,
      count: 2,
      effect: const WormEffect(
        activeDotColor: Color.fromRGBO(36, 161, 156, 1),
        dotColor: Colors.grey,
        dotHeight: 12,
        dotWidth: 12,
      ),
    );
  }
}
