import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/Controller/task_controller.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: screenHeight(context: context, responsiveHeight: 0.015),
      ),
      child: TextFormField(
        controller: Provider.of<TaskController>(context).taskController,
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
          hintText: "Task Title",
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
