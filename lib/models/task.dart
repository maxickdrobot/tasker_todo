import 'package:flutter/material.dart';

class Task {
  final String title;
  final String? time;
  final Color? priorityColor;
  bool isCompleted;

  Task({
    required this.title,
    this.time,
    this.priorityColor,
    this.isCompleted = false,
  });
}
