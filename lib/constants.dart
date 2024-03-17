import 'package:oop_task_dart/task_factory/graphic_design_task_factory.dart';
import 'package:oop_task_dart/task_factory/mathematics_task_factory.dart';
import 'package:oop_task_dart/task_factory/programming_task_factory.dart';
import 'package:oop_task_dart/task_factory/task_factory.dart';

final Map<String, TaskFactory> taskFactories = {
  'Mathematics': MathematicsTaskFactory(),
  'Programming': ProgrammingTaskFactory(),
  'Graphics_Design': GraphicDesignTaskFactory(),
};