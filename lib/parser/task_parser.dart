import 'package:oop_task_dart/task/task.dart';

abstract class TaskParser {
  List<Task> parse(String input);
}
