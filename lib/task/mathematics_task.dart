import 'package:oop_task_dart/task/task.dart';

class MathematicsTask extends Task {
  final String field;

  MathematicsTask({
    required super.title,
    required super.description,
    required this.field,
  });
}
