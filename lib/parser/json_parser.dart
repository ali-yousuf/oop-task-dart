import 'dart:convert';

import 'package:oop_task_dart/constants.dart';
import 'package:oop_task_dart/parser/task_parser.dart';
import 'package:oop_task_dart/task/task.dart';

class JsonParser implements TaskParser {
  @override
  List<Task> parse(String input) {
    List<Task> tasks = [];

    try {
      List<dynamic> taskMaps = jsonDecode(input);
      for (var taskData in taskMaps) {
        String type = taskData['type'];
        if (taskFactories.containsKey(type)) {
          tasks.add(taskFactories[type]!.createTask(taskData));
        } else {
          throw Exception('Invalid task type $type');
        }
      }
    } catch (e) {
      throw Exception("Invalid json string:$e");
    }

    return tasks;
  }
}
