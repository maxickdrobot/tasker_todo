import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasker_todo/models/task.dart';
import 'package:provider/provider.dart';
import 'package:tasker_todo/providers/task_provider.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  const TaskItem({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    var text = Theme.of(context).textTheme;
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);

    return Dismissible(
      key: Key(task.title),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white, size: 30),
      ),
      onDismissed: (direction) {
        taskProvider.deleteTask(task);
      },
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 0,
        child: InkWell(
          onTap: () => taskProvider.toggleTask(task),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16).copyWith(bottom: 0, right: 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: task.isCompleted
                            ? colors.primary
                            : const Color.fromARGB(51, 0, 0, 0),
                        width: 2,
                      ),
                      shape: BoxShape.circle,
                      color: task.isCompleted
                          ? colors.primary
                          : Colors.transparent,
                    ),
                    child: task.isCompleted
                        ? const Icon(Icons.check, size: 18, color: Colors.white)
                        : null,
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  task.title,
                                  style: text.bodyMedium?.copyWith(
                                    decoration: task.isCompleted
                                        ? TextDecoration.lineThrough
                                        : null,
                                    color: Color.fromARGB(
                                      task.isCompleted ? 127 : 255,
                                      0,
                                      0,
                                      0,
                                    ),
                                  ),
                                ),

                                if (task.time != null) ...[
                                  const SizedBox(height: 5),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        "assets/icons/Alarm.svg",
                                        width: 16,
                                        colorFilter: ColorFilter.mode(
                                          Color.fromARGB(
                                            task.isCompleted ? 38 : 51,
                                            0,
                                            0,
                                            0,
                                          ),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        task.time!,
                                        style: text.bodySmall?.copyWith(
                                          color: Color.fromARGB(
                                            task.isCompleted ? 38 : 51,
                                            0,
                                            0,
                                            0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            ),
                          ),
                          const SizedBox(height: 18),
                          if (task.priorityColor != null)
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: task.priorityColor,
                              ),
                            ),
                          const SizedBox(width: 16),
                        ],
                      ),
                      const SizedBox(height: 18),

                      const Divider(
                        color: Color.fromARGB(25, 37, 42, 49),
                        thickness: 1,
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
