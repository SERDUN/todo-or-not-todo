import 'package:flutter/material.dart';

class EmptyTaskWidget extends StatelessWidget {
  const EmptyTaskWidget({
    required this.onAddTask,
    super.key,
  });

  final VoidCallback onAddTask;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No tasks created yet!',
                    style: textTheme.titleLarge?.copyWith(color: colorScheme.onSurface.withOpacity(.5)),
                  ),
                  const SizedBox(height: 16), // Add some vertical spacing
                  ElevatedButton(
                    onPressed: onAddTask,
                    child: const Text('Create Task'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
