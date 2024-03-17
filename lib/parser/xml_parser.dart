import 'package:oop_task_dart/constants.dart';
import 'package:oop_task_dart/parser/task_parser.dart';
import 'package:oop_task_dart/task/task.dart';
import 'package:xml/xml.dart';

class XmlParser implements TaskParser {
  @override
  List<Task> parse(String input) {
    List<Task> tasks = [];

    try {
      XmlDocument document = XmlDocument.parse(input);
      List<XmlElement> xmlTasks = document.findAllElements('task').toList();

      for (var xmlTask in xmlTasks) {
        String type = xmlTask.findElements('type').single.innerText;
        if (taskFactories.containsKey(type)) {
          Map<String, dynamic> taskData = _extractTaskData(xmlTask);
          tasks.add(taskFactories[type]!.createTask(taskData));
        } else {
          throw Exception('Invalid task type $type');
        }
      }
    } catch (e) {
      throw Exception("Invalid xml string:$e");
    }

    return tasks;
  }

  Map<String, dynamic> _extractTaskData(XmlElement taskElement) {
    Map<String, dynamic> taskData = {};
    taskElement.children.whereType<XmlElement>().forEach((element) {
      taskData[element.name.local] = element.innerText;
    });
    return taskData;
  }
}
