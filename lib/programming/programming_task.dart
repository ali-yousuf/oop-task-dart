import 'package:oop_task_dart/platform/platform.dart';
import 'package:oop_task_dart/programming/language/language.dart';
import 'package:oop_task_dart/task.dart';

class ProgrammingTask extends Task {
  final Platform platform;
  final Language language;

  ProgrammingTask({
    required super.title,
    required super.description,
    required this.platform,
    required this.language,
  });
}
