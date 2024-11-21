import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taskly/Controller/onboarding_controller.dart';
import 'package:taskly/Screen_Resolution/screen_height.dart';
import 'package:taskly/Screen_Resolution/screen_width.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Consumer(
              builder: (context, onboardingController, child) {
                return PageView(
                  controller:
                      Provider.of<OnboardingController>(context).pageController,
                  onPageChanged: (index) {
                    Provider.of<OnboardingController>(context, listen: false)
                        .changePageIndex(index: index);
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    buildPageView(
                      backgroundImg: 'assets/images/Onboarding 1.png',
                      headline: 'Your convenience in \nmaking a todo list',
                      description:
                          "Here's a mobile platform that helps you create task or to list so that it can help you in \nevery job easier and faster",
                    ),
                    buildPageView(
                      backgroundImg: 'assets/images/Onboarding 2.png',
                      headline:
                          'Find the practicality in making your todo list',
                      description:
                          'Easy-to-understand user interface that makes you more comfortable when you want to create a task or to do list, Todyapp can also improve productivity',
                    ),
                  ],
                );
              },
            ),
          ),
          Consumer(builder: (context, onboardingController, child) {
            return SmoothPageIndicator(
              controller:
                  Provider.of<OnboardingController>(context).pageController,
              count: 2,
              effect: const WormEffect(
                activeDotColor: Color.fromRGBO(36, 161, 156, 1),
                dotColor: Colors.grey,
                dotHeight: 12,
                dotWidth: 12,
              ),
            );
          }),
          SizedBox(
            height: screenHeight(
              context: context,
              responsiveHeight: 0.101,
            ),
          ),
          Consumer(builder: (context, onBoardingController, child) {
            return ElevatedButton(
              onPressed: () {
                if (Provider.of<OnboardingController>(
                      context,
                      listen: false,
                    ).currentPage ==
                    1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Scaffold(),
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
          }),
          SizedBox(
            height: screenHeight(context: context, responsiveHeight: 0.0223),
          ),
        ],
      ),
    );
  }

  Widget buildPageView({
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
        Text(
          headline,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context: context, responsiveWidth: 0.03),
            vertical: screenHeight(
              context: context,
              responsiveHeight: 0.05,
            ),
          ),
          child: Column(
            children: [
              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: const Color.fromRGBO(46, 48, 54, 1),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
