import 'package:flutter/material.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class UsernameTextfield extends StatelessWidget {
  const UsernameTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: screenHeight(context: context, responsiveHeight: 0.015),
      ),
      child: TextFormField(
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              fontSize: screenWidth(
                context: context,
                responsiveWidth: 0.036,
              ),
            ),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          fillColor: const Color.fromRGBO(169, 176, 197, 0.3),
          filled: true,
          hintText: "roman@9723",
          hintStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: const Color.fromRGBO(169, 176, 197, 1),
                fontSize: screenWidth(
                  context: context,
                  responsiveWidth: 0.036,
                ),
              ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
