import 'package:oop_task_dart/task/programming_task.dart';
import 'package:oop_task_dart/task/task.dart';
import 'package:oop_task_dart/task_factory/task_factory.dart';

class ProgrammingTaskFactory implements TaskFactory {
  @override
  Task createTask(Map<String, dynamic> taskData) {
    return ProgrammingTask(
      title: taskData['title'] ?? 'Unknown',
      description: taskData['description'] ?? 'No description',
      platform: taskData['platform'] ?? 'Unknown',
      language: taskData['language'] ?? 'Unknown',
    );
  }
}
