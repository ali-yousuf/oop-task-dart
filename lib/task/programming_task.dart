import 'package:oop_task_dart/task/task.dart';

class ProgrammingTask extends Task {
  final String platform;
  final String language;

  ProgrammingTask({
    required super.title,
    required super.description,
    required this.platform,
    required this.language,
  });
}
