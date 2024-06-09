import 'package:flutter/material.dart';

import 'package:domain/domain.dart';

class StatusLabel extends StatelessWidget {
  const StatusLabel({
    required this.status,
    super.key,
  });

  final TaskStatus status;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: _getStatusColor(status),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _getStatusString(status),
        style: textTheme.labelMedium?.copyWith(color: colorScheme.surface),
        textAlign: TextAlign.center,
      ),
    );
  }

  // TODO(Serdun): Move to common scheme component
  Color _getStatusColor(TaskStatus status) {
    switch (status) {
      case TaskStatus.open:
        return Colors.blue;
      case TaskStatus.toDo:
        return Colors.orange;
      case TaskStatus.inProgress:
        return Colors.purple;
      case TaskStatus.done:
        return Colors.green;
    }
  }

  // TODO(Serdun): Move to l10n resources
  String _getStatusString(TaskStatus status) {
    switch (status) {
      case TaskStatus.open:
        return 'Open';
      case TaskStatus.toDo:
        return 'To do';
      case TaskStatus.inProgress:
        return 'In progress';
      case TaskStatus.done:
        return 'Done';
    }
  }
}
