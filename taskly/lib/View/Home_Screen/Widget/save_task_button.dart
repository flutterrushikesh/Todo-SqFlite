import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskly/Controller/task_controller.dart';
import 'package:taskly/Model/task_model.dart';
import 'package:taskly/View/Screen_Resolution/screen_height.dart';
import 'package:taskly/View/Screen_Resolution/screen_width.dart';

class SaveTaskButton extends StatelessWidget {
  const SaveTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context: context, responsiveHeight: 0.015),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
          TaskController localObj =
              Provider.of<TaskController>(context, listen: false);
          if (localObj.dateController.text.isNotEmpty &&
              localObj.descriptionController.text.isNotEmpty &&
              localObj.taskController.text.isNotEmpty) {
            localObj.saveTask(
              task: TaskModel(
                date: localObj.dateController.text.trim(),
                task: localObj.taskController.text.trim(),
                description: localObj.descriptionController.text.trim(),
                isComplete: false,
              ),
            );
            localObj.clearController();
          }
        },
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                minimumSize: WidgetStatePropertyAll(
              Size(
                double.infinity,
                screenHeight(context: context, responsiveHeight: 0.05),
              ),
            )),
        child: Text(
          "Save Task",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: screenWidth(
                  context: context,
                  responsiveWidth: 0.041,
                ),
              ),
        ),
      ),
    );
  }
}
