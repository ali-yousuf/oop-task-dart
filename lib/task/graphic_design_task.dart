import 'package:oop_task_dart/task/task.dart';

class GraphicDesignTask extends Task {
  final String platform;
  final String output;

  GraphicDesignTask({
    required super.title,
    required super.description,
    required this.platform,
    required this.output,
  });
}
