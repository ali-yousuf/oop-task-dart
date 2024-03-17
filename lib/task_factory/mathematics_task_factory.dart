import 'package:oop_task_dart/task/mathematics_task.dart';
import 'package:oop_task_dart/task/task.dart';
import 'package:oop_task_dart/task_factory/task_factory.dart';

class MathematicsTaskFactory implements TaskFactory {
  @override
  Task createTask(Map<String, dynamic> taskData) {
    return MathematicsTask(
      title: taskData['title'] ?? 'Unknown',
      description: taskData['description'] ?? 'No description',
      field: taskData['field'] ?? 'Unknown',
    );
  }
}
