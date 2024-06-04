import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';

import 'task_property.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({
    required this.taskModel,
    super.key,
  });

  final TaskModel taskModel;

  @override
  Widget build(BuildContext context) {
    final title = taskModel.title ?? '';
    final description = taskModel.content ?? '';
    final status = taskModel.status?.name ?? '';
    final priority = taskModel.priority?.name ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title.isNotEmpty)
          TaskProperty(
            title: 'Title',
            content: title,
          ),
        if (description.isNotEmpty)
          TaskProperty(
            title: 'Description',
            content: description,
          ),
        if (status.isNotEmpty)
          TaskProperty(
            title: 'Status',
            content: status,
          ),
        if (priority.isNotEmpty)
          TaskProperty(
            title: 'Priority',
            content: priority,
          )
      ],
    );
  }
}
