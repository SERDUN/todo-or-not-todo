import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo_or_not_todo/extensions/extensions.dart';
import 'package:todo_or_not_todo/features/tasks/widgets/widgets.dart';

import '../bloc/tasks_details_bloc.dart';
import '../widgets/widgets.dart';

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
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 5),
                        child: const CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    ),
                  ),
                  if (state.isSuccess) TaskDetails(taskModel: state.task!),
                  if (state.isSuccess)
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
