import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:todo_or_not_todo/app/route/route.dart';
import 'package:todo_or_not_todo/features/consts.dart';

import '../bloc/tasks_details_bloc.dart';

class TasksDetailsScreen extends StatefulWidget {
  const TasksDetailsScreen({
    required this.id,
    super.key,
  });

  final int id;

  @override
  State<TasksDetailsScreen> createState() => _TasksDetailsScreenState();
}

class _TasksDetailsScreenState extends State<TasksDetailsScreen> {
  TasksDetailsBloc get _bloc => BlocProvider.of<TasksDetailsBloc>(context);

  @override
  void initState() {
    _bloc.getTask(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksDetailsBloc, TasksDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(paddingHorizontal),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => _pushToTasksScreen(context),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).primaryColor,
                    ),
                    padding: const EdgeInsets.all(iconPadding),
                  ),
                  if (state.status == TasksDetailsStatus.loading)
                    Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  else if (state.task != null)
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(cardPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.task!.title,
                                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                state.task!.content,
                                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  else
                    Center(
                      child: Text(
                        'Task not found',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // TODO(Kovalchuck): Implement the function
            },
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Icon(
              Icons.edit,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }

  void _pushToTasksScreen(BuildContext context) => context.goNamed(Routes.tasks.name);
}
