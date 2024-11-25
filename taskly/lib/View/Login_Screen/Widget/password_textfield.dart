import 'package:flutter/material.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class PasswordTextfield extends StatelessWidget {
  const PasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.labelLarge!.copyWith(
            fontSize: screenWidth(
              context: context,
              responsiveWidth: 0.036,
            ),
          ),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.visibility_off,
          color: Color.fromRGBO(169, 176, 197, 1),
        ),
        fillColor: const Color.fromRGBO(169, 176, 197, 0.3),
        filled: true,
        hintText: "*********",
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
    );
  }
}
