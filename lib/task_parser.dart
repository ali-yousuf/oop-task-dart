import 'package:oop_task_dart/graphic_design/graphic_design_task.dart';
import 'package:oop_task_dart/graphic_design/output/output_parser.dart';
import 'package:oop_task_dart/mathematics/field/field_parser.dart';
import 'package:oop_task_dart/mathematics/mathematics_task.dart';
import 'package:oop_task_dart/platform/platform_parser.dart';
import 'package:oop_task_dart/programming/language/language_parser.dart';
import 'package:oop_task_dart/programming/programming_task.dart';
import 'package:oop_task_dart/task.dart';

class TaskParser {
  List<Task> parseJson(List<Map<String, dynamic>> jsonList) {
    List<Task> tasks = [];

    for (var item in jsonList) {
      String type = item['type'];
      switch (type) {
        case 'Mathematics':
          tasks.add(
            MathematicsTask(
              title: item['title'],
              description: item['description'],
              field: FieldParser().field(item['field']),
            ),
          );
          break;
        case 'Programming':
          tasks.add(
            ProgrammingTask(
              title: item['title'],
              description: item['description'],
              platform: PlatformParser().platform(item['plaforms']),
              language: LanguageParser().language(item['language']),
            ),
          );
          break;
        case 'Graphics_Design':
          tasks.add(
            GraphicDesignTask(
              title: item['title'],
              description: item['description'],
              platform: PlatformParser().platform(item['plaforms']),
              output: OutputParser().output(item['output']),
            ),
          );
          break;
        default:
          throw Exception('Invalid task type $type');
      }
    }

    return tasks;
  }
}
