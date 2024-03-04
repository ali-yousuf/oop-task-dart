import 'package:flutter/material.dart';
import 'package:oop_task_dart/graphic_design/graphic_design_task.dart';
import 'package:oop_task_dart/mathematics/mathematics_task.dart';
import 'package:oop_task_dart/programming/programming_task.dart';
import 'package:oop_task_dart/task.dart';
import 'package:oop_task_dart/task_parser.dart';

void main() {
  List<Map<String, dynamic>> jsonInput = [
    {
      "title": "Sample Programming task",
      "description": "Create E-Commerce client",
      "plaforms": "Web",
      "language": "Javascript",
      "type": "Programming"
    },
    {
      "title": "Sample Math task",
      "description": "Solve the claculus",
      "field": "Calculus",
      "type": "Mathematics"
    },
    {
      "title": "Sample Graphic Design task",
      "description": "UX design for E-Comerce",
      "plaforms": "Web",
      "output": "Figma",
      "type": "Graphics_Design"
    }
  ];

  TaskParser parser = TaskParser();
  List<Task> tasks = parser.parseJson(jsonInput);

  for (var task in tasks) {
    if(task is MathematicsTask){
      debugPrint("MathematicsTask:");
      debugPrint("title: ${task.title}, description: ${task.description}, field: ${task.field.getFieldName()}\n");
    } else if(task is ProgrammingTask){
      debugPrint("ProgrammingTask:");
      debugPrint("title: ${task.title}, description: ${task.description}, platform: ${task.platform.getPlatformName()}, language: ${task.language.getLanguageName()}\n");
    } else if(task is GraphicDesignTask){
      debugPrint("GraphicDesignTask:");
      debugPrint("title: ${task.title}, description: ${task.description}, platform: ${task.platform.getPlatformName()}, output: ${task.output.getOutputName()}\n");
    }
  }
}
