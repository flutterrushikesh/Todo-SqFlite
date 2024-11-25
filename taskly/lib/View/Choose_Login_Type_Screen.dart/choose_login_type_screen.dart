import 'package:flutter/material.dart';
import 'package:taskly/View/Choose_Login_Type_Screen.dart/Widget/login_button.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class ChooseLoginTypeScreen extends StatelessWidget {
  const ChooseLoginTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context: context, responsiveWidth: 0.041),
          vertical: screenHeight(context: context, responsiveHeight: 0.018),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical:
                    screenHeight(context: context, responsiveHeight: 0.06),
              ),
              child: RichText(
                text: TextSpan(
                  text: "Welcome to ",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.black,
                      ),
                  children: [
                    TextSpan(
                      text: "Taskly",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(
                              color: const Color.fromRGBO(36, 161, 156, 1)),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/Onboarding 3.png'),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical:
                    screenHeight(context: context, responsiveHeight: 0.05),
              ),
              child: const LoginTypeButton(
                buttonType: "Login",
              ),
            ),
            const LoginTypeButton(
              buttonType: "Sign up",
            ),
          ],
        ),
      ),
    );
  }
}
