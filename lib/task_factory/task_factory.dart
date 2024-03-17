import 'package:oop_task_dart/task/task.dart';

abstract class TaskFactory {
  Task createTask(Map<String, dynamic> taskData);
}
