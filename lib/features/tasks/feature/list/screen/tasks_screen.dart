import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:todo_or_not_todo/app/consts.dart';
import 'package:todo_or_not_todo/extensions/extensions.dart';

import 'package:todo_or_not_todo/app/route/route.dart';
import 'package:todo_or_not_todo/features/consts.dart';

import '../bloc/tasks_bloc.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksBloc, TasksState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(paddingHorizontal),
            child: Column(
              children: [
                if (state.status == TasksStatus.loading)
                  Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                else
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.tasks?.length ?? 0,
                      itemBuilder: (context, index) {
                        final task = state.tasks![index];
                        return GestureDetector(
                          onTap: () => _pushToTaskDetailsScreen(
                            context,
                            id: 1,
                          ),
                          child: Card(
                            margin: const EdgeInsets.symmetric(vertical: paddingVertical),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardBorderRadius),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(cardPadding),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${task.title} id:${task.id}',
                                          style: Theme.of(context).textTheme.labelMedium,
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          task.content,
                                          style: Theme.of(context).textTheme.labelSmall,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    child: const Icon(Icons.delete),
                                    onTap: () => context.read<TasksBloc>().delete(task.id),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.pushNamed(Routes.taskAdd.name).then(context.read<TasksBloc>().fetch);
              // TODO(Kovalchuck): Implement the function
            },
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Icon(
              Icons.add,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
        );
      },
      listener: _listenState,
    );
  }

  void _listenState(BuildContext context, TasksState state) {
    if (state.status == TasksStatus.error) {
      context.showErrorSnackBar(state.exception.toString());
    }
  }

  void _pushToTaskDetailsScreen(
    BuildContext context, {
    required int id,
  }) async {
    await context.pushNamed(Routes.taskDetails.name, queryParameters: {
      queryIdText: id.toString(),
    });
  }
}
