import 'package:flutter/material.dart';

class SubTaskItem extends StatelessWidget {
  const SubTaskItem({
    required this.title,
    required this.onTab,
    super.key,
  });

  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTab,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(Icons.task),
              const SizedBox(width: 16),
              // TODO(Serdun): Implement subtask, replace list
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
