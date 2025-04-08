import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/task.dart';

class TaskViewModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  void addTask(String title, String description) {
    final colors = ['#FFCDD2', '#C8E6C9', '#BBDEFB', '#FFF9C4'];
    final color = colors[_tasks.length % colors.length];

    _tasks.add(Task(
      id: const Uuid().v4(),
      title: title,
      description: description,
      color: color,
    ));

    notifyListeners();
  }
}
