import 'package:flutter/material.dart';
import 'package:oop_task_dart/parser/json_parser.dart';
import 'package:oop_task_dart/parser/task_parser.dart';
import 'package:oop_task_dart/parser/xml_parser.dart';
import 'package:oop_task_dart/task/graphic_design_task.dart';
import 'package:oop_task_dart/task/mathematics_task.dart';
import 'package:oop_task_dart/task/programming_task.dart';
import 'package:oop_task_dart/task/task.dart';

void main() {
  String jsonString = '''
  [
    {
      "title": "Sample Programming task",
      "description": "Create E-Commerce client",
      "platforms": "Web",
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
      "platforms": "Web",
      "output": "Figma",
      "type": "Graphics_Design"
    }
  ]
  ''';

  String xmlString = '''
  <tasks>
    <task>
      <title>Sample Programming task</title>
      <description>Create E-Commerce client</description>
      <platforms>Web</platforms>
      <language>Javascript</language>
      <type>Programming</type>
    </task>
    <task>
      <title>Sample Math task</title>
      <description>Solve the claculus</description>
      <field>Calculus</field>
      <type>Mathematics</type>
    </task>
    <task>
      <title>Sample Graphic Design task</title>
      <description>UX design for E-Comerce</description>
      <platforms>Web</platforms>
      <output>Figma</output>
      <type>Graphics_Design</type>
    </task>
  </tasks>
  ''';

  //TaskParser parser = JsonParser();
  TaskParser parser = XmlParser();
  List<Task> tasks = parser.parse(xmlString);

  for (var task in tasks) {
    if (task is MathematicsTask) {
      debugPrint("MathematicsTask:");
      debugPrint(
          "title: ${task.title}, description: ${task.description}, field: ${task.field}\n");
    } else if (task is ProgrammingTask) {
      debugPrint("ProgrammingTask:");
      debugPrint(
          "title: ${task.title}, description: ${task.description}, platform: ${task.platform}, language: ${task.language}\n");
    } else if (task is GraphicDesignTask) {
      debugPrint("GraphicDesignTask:");
      debugPrint(
          "title: ${task.title}, description: ${task.description}, platform: ${task.platform}, output: ${task.output}\n");
    }
  }
}
