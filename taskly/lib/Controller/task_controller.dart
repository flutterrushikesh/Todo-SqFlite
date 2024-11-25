import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:taskly/Model/task_model.dart';

class TaskController extends ChangeNotifier {
  List<TaskModel> listOfTask = [];

  TextEditingController taskController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void completeTask({required int index}) {
    listOfTask[index].isComplete = !listOfTask[index].isComplete;
    notifyListeners();
  }

  void saveTask({required TaskModel task}) {
    listOfTask.add(task);
    notifyListeners();
  }

  void deleteTask({required int index}) {
    listOfTask.removeAt(index);
    notifyListeners();
  }

  void clearController() {
    taskController.clear();
    descriptionController.clear();
    dateController.clear();
  }
}
