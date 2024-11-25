import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/Controller/onboarding_controller.dart';
import 'package:taskly/View/Choose_Login_Type_Screen.dart/choose_login_type_screen.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (Provider.of<OnboardingController>(
              context,
              listen: false,
            ).currentPage ==
            1) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ChooseLoginTypeScreen(),
            ),
          );
        } else {
          Provider.of<OnboardingController>(
            context,
            listen: false,
          ).pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
        }
      },
      style: Theme.of(context).elevatedButtonTheme.style,
      child: Text(
        Provider.of<OnboardingController>(context).currentPage == 1
            ? "Get Started"
            : "Continue",
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
