import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

import 'status_label.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    required this.task,
    required this.onDelete,
    required this.onTap,
    super.key,
  });

  final TaskModel task;

  final ValueChanged<TaskModel> onDelete;
  final ValueChanged<TaskModel> onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        margin: EdgeInsets.zero,
        child: ListTile(
          title: Text(
            task.title,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          subtitle: Text(
            task.content,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          leading: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: MediaQuery.of(context).size.width / 12),
            child: StatusLabel(
              status: task.status!,
            ),
          ),
          trailing: InkWell(
            onTap: () => onDelete(task),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.delete),
            ),
          ),
          onTap: () => onTap(task),
        ),
      ),
    );
  }
}
