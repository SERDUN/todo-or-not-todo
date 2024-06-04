import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskProperty extends StatelessWidget {
  const TaskProperty({
    required this.title,
    required this.content,
    super.key,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.labelMedium?.copyWith(color: colorScheme.primary),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            content,
            style: theme.bodyMedium,
            textAlign: TextAlign.start,
          ),
          Divider(
            color: colorScheme.onSurface.withOpacity(.1),
          ),
        ],
      ),
    );
  }
}
