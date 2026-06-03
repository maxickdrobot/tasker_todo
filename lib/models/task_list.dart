import 'package:flutter/material.dart';
import 'package:tasker_todo/models/task.dart';

class TaskList {
  final String name;
  final Color color;
  final List<Task> tasks;

  const TaskList({
    required this.name,
    required this.color,
    required this.tasks,
  });

  int get taskCount => tasks.length;
}
