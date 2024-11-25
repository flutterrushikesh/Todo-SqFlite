import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/Controller/onboarding_controller.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class MyPageView extends StatelessWidget {
  const MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: Provider.of<OnboardingController>(context).pageController,
      onPageChanged: (index) {
        Provider.of<OnboardingController>(context, listen: false)
            .changePageIndex(index: index);
      },
      physics: const NeverScrollableScrollPhysics(),
      children: [
        buildPageView(
          backgroundImg: 'assets/images/Onboarding 1.png',
          context: context,
          headline: 'Your convenience in \nmaking a todo list',
          description:
              "Here's a mobile platform that helps you create task or to list so that it can help you in \nevery job easier and faster",
        ),
        buildPageView(
          context: context,
          backgroundImg: 'assets/images/Onboarding 2.png',
          headline: 'Find the practicality in making your todo list',
          description:
              'Easy-to-understand user interface that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',
        ),
      ],
    );
  }

  Widget buildPageView({
    required BuildContext context,
    required String backgroundImg,
    required String headline,
    required String description,
  }) {
    return Column(
      children: [
        Image.asset(
          backgroundImg,
          width: double.infinity,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context: context, responsiveWidth: 0.01),
          ),
          child: Text(
            headline,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: screenWidth(
                    context: context,
                    responsiveWidth: 0.08,
                  ),
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context: context, responsiveWidth: 0.03),
            vertical: screenHeight(
              context: context,
              responsiveHeight: 0.025,
            ),
          ),
          child: Column(
            children: [
              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color.fromRGBO(46, 48, 54, 1),
                      fontSize: screenWidth(
                        context: context,
                        responsiveWidth: 0.041,
                      ),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
