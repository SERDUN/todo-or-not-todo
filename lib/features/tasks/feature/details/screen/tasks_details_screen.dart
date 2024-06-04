import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:todo_or_not_todo/app/route/route.dart';
import 'package:todo_or_not_todo/extensions/extensions.dart';
import 'package:todo_or_not_todo/features/consts.dart';
import 'package:todo_or_not_todo/features/tasks/widgets/widgets.dart';

import '../bloc/tasks_details_bloc.dart';

class TasksDetailsScreen extends StatefulWidget {
  const TasksDetailsScreen({
    super.key,
  });

  @override
  State<TasksDetailsScreen> createState() => _TasksDetailsScreenState();
}

class _TasksDetailsScreenState extends State<TasksDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TasksDetailsBloc>(context);

    final theme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task detail'),
      ),
      body: BlocConsumer<TasksDetailsBloc, TasksDetailsState>(
        builder: (context, TasksDetailsState state) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: state.isProgress,
                    child: const LinearProgressIndicator(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ListTile(
                    title: Text(
                      'Title',
                      style: theme.labelMedium,
                    ),
                    subtitle: Text(
                      state.task?.title ?? '',
                      style: theme.labelLarge,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Description',
                      style: theme.labelMedium,
                    ),
                    subtitle: Text(
                      state.task?.content ?? '',
                      style: theme.labelLarge,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Status',
                      style: theme.labelMedium,
                    ),
                    subtitle: Text(
                      state.task?.status?.name ?? '',
                      style: theme.labelLarge,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Priority',
                      style: theme.labelMedium,
                    ),
                    subtitle: Text(
                      state.task?.priority?.name ?? '',
                      style: theme.labelLarge,
                    ),
                  ),
                  Divider(
                    color: colorScheme.onSurface.withOpacity(.1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        SubTaskAdd(onPressed: () {}),
                        const SizedBox(height: 16),
                        SubTasks(
                          tasks: state.subTask,
                          onTab: (it) => _openSubTask(context, it),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
        listener: _listenState,
      ),
    );
  }

  void _openSubTask(BuildContext context, String id) {}

  void _listenState(BuildContext context, TasksDetailsState state) {
    // TODO(Serdun): Add string local resources
    if (state.isFailure) _showFailure(context, state.failure!);
  }

  void _showFailure(BuildContext context, Object error) => context.showErrorSnackBar(error.toString());
}
