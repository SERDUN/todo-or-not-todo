import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TODO(Serdun): add locale resource
                const Text('Filtering:'),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  children: state.taskStatuses.map((status) {
                    return FilterChip(
                      label: Text(status.key),
                      selected: state.taskStatus.contains(status),
                      onSelected: (isSelected) {
                        isSelected
                            ? context.read<TasksBloc>().addFilteringTaskStatus(status)
                            : context.read<TasksBloc>().removeFilteringTaskStatus(status);
                      },
                    );
                  }).toList(),
                ),
                const Divider(),
                Visibility(
                  visible: state.isProgress,
                  child: const LinearProgressIndicator(),
                ),
                Expanded(
                  child: ReorderableListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: state.filteredTasks.length,
                    onReorder: (int oldIndex, int newIndex) {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      context.read<TasksBloc>().updatePosition(oldIndex, newIndex);
                    },
                    itemBuilder: (context, index) {
                      final task = state.filteredTasks[index];
                      return Padding(
                          key: ValueKey(task.id),
                          padding: const EdgeInsets.symmetric(vertical: 8.0), // Adjust vertical margin as needed
                          child: Card(
                            key: ValueKey(task.id),
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(cardBorderRadius),
                            ),
                            child: ListTile(
                              title: Text(
                                '${task.title} id:${task.id} position:${task.position}',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              subtitle: Text(
                                task.content,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              trailing: InkWell(
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Icon(Icons.delete),
                                ),
                                onTap: () => context.read<TasksBloc>().delete(task.id),
                              ),
                              onTap: () => _goTaskDetailsScreen(context, task.id),
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.pushNamed(Routes.taskAdd.name).then(context.read<TasksBloc>().fetch);
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
    if (state.isFailure) _showFailure(context, state.failure!);
  }

  void _showFailure(BuildContext context, Object error) => context.showErrorSnackBar(error.parseExceptionMessage());

  void _goTaskDetailsScreen(BuildContext context, String id) =>
      context.pushNamed(Routes.taskDetails.name, queryParameters: {QueriesKeys.queryIdText: id});
}
