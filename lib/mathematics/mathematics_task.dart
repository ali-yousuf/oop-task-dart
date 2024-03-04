import 'package:oop_task_dart/mathematics/field/mathematics_field.dart';
import 'package:oop_task_dart/task.dart';

class MathematicsTask extends Task {
  MathematicsField field;

  MathematicsTask({
    required super.title,
    required super.description,
    required this.field,
  });
}
