import 'package:oop_task_dart/task/graphic_design_task.dart';
import 'package:oop_task_dart/task/task.dart';
import 'package:oop_task_dart/task_factory/task_factory.dart';

class GraphicDesignTaskFactory implements TaskFactory {
  @override
  Task createTask(Map<String, dynamic> taskData) {
    return GraphicDesignTask(
      title: taskData['title'] ?? 'Unknown',
      description: taskData['description'] ?? 'No description',
      platform: taskData['platform'] ?? 'Unknown',
      output: taskData['output'] ?? 'Unknown',
    );
  }
}
