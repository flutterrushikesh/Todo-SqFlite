import 'package:flutter/material.dart';
import 'package:taskly/View/Login_Screen/Widget/email_textfield.dart';
import 'package:taskly/View/Login_Screen/Widget/login_button.dart';
import 'package:taskly/View/Login_Screen/Widget/page_title_description.dart';
import 'package:taskly/View/Login_Screen/Widget/password_textfield.dart';
import 'package:taskly/View/Login_Screen/Widget/user_name_textfield.dart';

import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class LoginScreen extends StatelessWidget {
  final String title;
  final String description;
  const LoginScreen(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context: context, responsiveWidth: 0.041),
          vertical: screenHeight(context: context, responsiveHeight: 0.018),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageTitleDescription(description: description, title: title),
            title == "Setup with Taskly"
                ? labeltext(context: context, label: "Email Address")
                : Container(),
            title == "Setup with Taskly" ? const EmailTextfield() : Container(),
            labeltext(context: context, label: "Username"),
            const UsernameTextfield(),
            labeltext(context: context, label: "Password"),
            const PasswordTextfield(),
            const Spacer(),
            LoginButton(pageTitle: title),
          ],
        ),
      ),
    );
  }

  Widget labeltext({required BuildContext context, required String label}) {
    return Text(
      label,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
