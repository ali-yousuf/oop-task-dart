import 'package:oop_task_dart/graphic_design/output/adobe_illustrator.dart';
import 'package:oop_task_dart/graphic_design/output/figma.dart';
import 'package:oop_task_dart/graphic_design/output/invision.dart';
import 'package:oop_task_dart/graphic_design/output/output.dart';

class OutputParser {
  Output output(String name) {
    switch (name) {
      case 'Figma':
        return Figma();
      case 'Adobe Illustrator':
        return AdobeIllustrator();
      case 'Invision':
        return Invision();
      default:
        throw Exception('Invalid Output');
    }
  }
}
