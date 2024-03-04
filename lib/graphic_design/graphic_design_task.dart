import 'package:oop_task_dart/graphic_design/output/output.dart';
import 'package:oop_task_dart/platform/platform.dart';
import 'package:oop_task_dart/task.dart';

class GraphicDesignTask extends Task {
  final Platform platform;
  final Output output;

  GraphicDesignTask({
    required super.title,
    required super.description,
    required this.platform,
    required this.output,
  });

  @override
  String toString() {
    return 'GraphicDesignTask{platform: $platform, output: $output}';
  }
}
