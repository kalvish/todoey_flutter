import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskListModel extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: "Buy bread"),
    Task(name: "Buy milk"),
    Task(name: "Buy potato"),
    Task(name: "Buy meat"),
    Task(name: "Buy bun", isDone: true),
  ];

  void add(Task task) {
    _taskList.add(task);
    notifyListeners();
  }

  void toggleTask(int index) {
    _taskList[index].toggleDone();
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }
}
