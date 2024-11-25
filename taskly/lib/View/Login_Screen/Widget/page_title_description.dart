import 'package:flutter/material.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class PageTitleDescription extends StatelessWidget {
  final String title;
  final String description;
  const PageTitleDescription(
      {super.key, required this.description, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context: context, responsiveHeight: 0.06),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black,
                  ),
            ),
          ),
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
    );
  }
}
