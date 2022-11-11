import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: 'Buy milk'),
    Tasks(name: 'Buy eggs'),
    Tasks(name: 'Buy bread'),
  ];

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  } 

  void uptadeTask(Tasks tasks) {
    tasks.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}