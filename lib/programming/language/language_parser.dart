import 'package:oop_task_dart/programming/language/dart.dart';
import 'package:oop_task_dart/programming/language/java.dart';
import 'package:oop_task_dart/programming/language/javascript.dart';
import 'package:oop_task_dart/programming/language/language.dart';

class LanguageParser {
  Language language(String name) {
    switch (name) {
      case 'Dart':
        return Dart();
      case 'Java':
        return Java();
      case 'Javascript':
        return Javascript();
      default:
        throw Exception("Invalid Language!");
    }
  }
}
