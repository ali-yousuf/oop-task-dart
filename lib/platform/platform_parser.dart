import 'package:flutter/material.dart';
import 'package:oop_task_dart/platform/backend.dart';
import 'package:oop_task_dart/platform/desktop.dart';
import 'package:oop_task_dart/platform/mobile.dart';
import 'package:oop_task_dart/platform/platform.dart';
import 'package:oop_task_dart/platform/web.dart';

class PlatformParser {
  Platform platform(String name) {
    switch (name) {
      case 'Mobile':
        return Mobile();
      case 'Web':
        return Web();
      case 'Desktop':
        return Desktop();
      case 'Backend':
        return Backend();
      default:
        throw Exception('Invalid Platform');
    }
  }
}
