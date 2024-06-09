import 'package:flutter/material.dart';

import 'sub_task_item.dart';

class SubTasks extends StatelessWidget {
  const SubTasks({
    required this.tasks,
    required this.onTab,
    super.key,
  });

  final List<String> tasks;
  final ValueChanged<String> onTab;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return SubTaskItem(
          onTab: () => onTab(task),
          title: task,
        );
      },
    );
  }
}
