import 'package:flutter/material.dart';
import 'package:tasker_todo/models/task_list.dart';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(title: 'Start making a presentation', priorityColor: Colors.green),
    Task(title: 'Pay for rent', time: '7:00 pm', priorityColor: Colors.purple),
    Task(title: 'Buy a milk', priorityColor: Colors.red),
    Task(title: "Don't forget to pick up Mickael"),
    Task(title: 'Buy a chocolate for Charlotte', priorityColor: Colors.red),
  ];

  late final List<TaskList> _lists;

  TaskProvider() {
    _lists = [
      TaskList(name: 'Inbox', color: Colors.grey.shade100, tasks: [_tasks[3]]),
      TaskList(
        name: 'Work',
        color: const Color(0xFF61DEA4),
        tasks: [_tasks[0]],
      ),
      TaskList(
        name: 'Shopping',
        color: const Color(0xFFF45E6D),
        tasks: [_tasks[2], _tasks[4]],
      ),
      TaskList(
        name: 'Family',
        color: const Color(0xFFFFE761),
        tasks: [_tasks[3]],
      ),
    ];
  }

  List<Task> get tasks => List.unmodifiable(_tasks);
  List<TaskList> get lists => List.unmodifiable(_lists);

  void addTask(String title) {
    _tasks.add(
      Task(title: title, priorityColor: Colors.blue, isCompleted: false),
    );
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTask(Task task) {
    final index = _tasks.indexOf(task);
    _tasks[index] = Task(
      title: task.title,
      priorityColor: task.priorityColor,
      isCompleted: !task.isCompleted,
      time: task.time,
    );
    notifyListeners();
  }
}
