class TaskModel {
  String task;
  String date;
  String description;
  bool isComplete = false;

  TaskModel({
    required this.date,
    required this.description,
    required this.task,
    required this.isComplete,
  });
}
