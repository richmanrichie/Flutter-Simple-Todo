import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:sricktodoeyflutter/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'buy an inverter')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return tasks.length;
  }

  void addTask(String title) {
    Task task = Task(name: title);
    print(title);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}