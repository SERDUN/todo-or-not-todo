import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:mobile/extensions/extensions.dart';
import 'package:mobile/route/route.dart';
import 'package:mobile/features/consts.dart';

import '../bloc/tasks_bloc.dart';
import '../widgets/widgets.dart';

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
                if (state.isNoTasks)
                  EmptyTaskWidget(
                    onAddTask: () => _goAddTaskScreen(context),
                  )
                else
                  Expanded(
                    child: ReorderableListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: state.filteredTasks.length,
                      onReorder: _onUpdateItemPosition,
                      itemBuilder: (context, index) => TaskItem(
                          key: ValueKey(state.filteredTasks[index].id),
                          task: state.filteredTasks[index],
                          onDelete: (task) => context.read<TasksBloc>().delete(task.id),
                          onTap: (task) => _goTaskDetailsScreen(context, task.id)),
                    ),
                  )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _goAddTaskScreen(context),
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

  void _onUpdateItemPosition(int newIndex, int oldIndex) {
    var processNewIndex = newIndex;
    if (processNewIndex > oldIndex) {
      processNewIndex -= 1;
    }
    context.read<TasksBloc>().updatePosition(oldIndex, processNewIndex);
  }

  void _listenState(BuildContext context, TasksState state) {
    if (state.isFailure) _showFailure(context, state.failure!);
  }

  void _showFailure(BuildContext context, Object error) => context.showErrorSnackBar(error.parseExceptionMessage());

  void _goTaskDetailsScreen(BuildContext context, String id) =>
      context.pushNamed(Routes.taskDetails.name, queryParameters: {QueriesKeys.queryIdText: id});

  void _goAddTaskScreen(BuildContext context) =>
      context.pushNamed(Routes.taskAdd.name).then(context.read<TasksBloc>().fetch);
}
