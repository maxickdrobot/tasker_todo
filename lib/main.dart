import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasker_todo/app.dart';
import 'package:tasker_todo/providers/task_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (ctx) => TaskProvider(), child: App()));
}
