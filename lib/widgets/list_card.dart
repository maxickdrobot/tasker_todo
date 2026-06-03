import 'package:flutter/material.dart';
import '../models/task_list.dart';

class ListCard extends StatelessWidget {
  final TaskList taskList;

  const ListCard({super.key, required this.taskList});

  @override
  Widget build(BuildContext context) {
    var text = Theme.of(context).textTheme;
    final bool isDark =
        taskList.color != Colors.grey.shade100 &&
        taskList.color != Color(0xFFFFE761);
    final Color textColor = isDark ? Colors.white : Colors.black87;
    final Color subtitleColor = isDark ? Colors.white70 : Colors.black45;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: taskList.color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            taskList.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${taskList.taskCount} task${taskList.taskCount == 1 ? "" : "s"}',
            style: text.bodySmall?.copyWith(
              color: subtitleColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
