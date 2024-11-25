import 'package:flutter/material.dart';
import 'package:taskly/View/Home_Screen/Widget/date_textfield.dart';
import 'package:taskly/View/Home_Screen/Widget/description_textfield.dart';
import 'package:taskly/View/Home_Screen/Widget/save_task_button.dart';
import 'package:taskly/View/Home_Screen/Widget/title_textfield.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

void taskBottomSheet({
  required BuildContext context,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          right: screenWidth(context: context, responsiveWidth: 0.041),
          left: screenWidth(context: context, responsiveWidth: 0.041),
          top: screenHeight(context: context, responsiveHeight: 0.018),
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom:
                      screenHeight(context: context, responsiveHeight: 0.05),
                ),
                child: Text(
                  "Plan Your Task",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ),
            ),
            _lableText(context: context, label: "Title"),
            const TitleTextfield(),
            _lableText(context: context, label: "Description"),
            const DescriptionTextfield(),
            _lableText(context: context, label: "Date"),
            const DateTextfield(),
            const SaveTaskButton(),
          ],
        ),
      );
    },
  );
}

Widget _lableText({required BuildContext context, required String label}) {
  return Text(
    label,
    style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).primaryColor,
        ),
  );
}
