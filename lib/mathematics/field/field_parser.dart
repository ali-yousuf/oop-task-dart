import 'package:oop_task_dart/mathematics/field/algebra.dart';
import 'package:oop_task_dart/mathematics/field/calculus.dart';
import 'package:oop_task_dart/mathematics/field/geometry.dart';
import 'package:oop_task_dart/mathematics/field/mathematics_field.dart';
import 'package:oop_task_dart/mathematics/field/probability.dart';
import 'package:oop_task_dart/mathematics/field/statistics.dart';

class FieldParser {
  MathematicsField field(String name) {
    switch (name) {
      case 'Calculus':
        return Calculus();
      case 'Algebra':
        return Algebra();
      case 'Geometry':
        return Geometry();
      case 'Probability':
        return Probability();
      case 'Statistics':
        return Statistics();
      default:
        throw Exception('Invalid field!');
    }
  }
}
