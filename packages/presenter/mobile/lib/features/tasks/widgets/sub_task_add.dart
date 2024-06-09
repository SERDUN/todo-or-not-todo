import 'package:flutter/material.dart';

class SubTaskAdd extends StatelessWidget {
  const SubTaskAdd({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Row(
      children: [
        // TODO(Serdun): Add localization
        Text('Sub tasks ', style: theme.titleMedium),
        const Spacer(),
        const SizedBox(width: 8),
        TextButton(
          onPressed: onPressed,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // TODO(Serdun): Add localization
              Text('Add subtask'),
              SizedBox(width: 8),
              Icon(Icons.add_sharp),
            ],
          ),
        ),
      ],
    );
  }
}
