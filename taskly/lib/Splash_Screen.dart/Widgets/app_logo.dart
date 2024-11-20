import 'package:flutter/material.dart';
import 'package:taskly/Screen_Resolution/screen_height.dart';
import 'package:taskly/Screen_Resolution/screen_width.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: screenHeight(
          context: context,
          responsiveHeight: 0.015,
        ),
        horizontal: screenWidth(
          context: context,
          responsiveWidth: 0.034,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(
          context: context,
          responsiveHeight: 0.015,
        ),
        horizontal: screenWidth(
          context: context,
          responsiveWidth: 0.034,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Image.asset(
        'assets/icons/task.png',
      ),
    );
  }
}
