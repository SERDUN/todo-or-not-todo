import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:domain/domain.dart';
import 'package:common/common.dart';

import '../bloc/bloc.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AddTaskCubit>(context);

    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(bloc.state.parentTaskId.isEmpty ? 'Add new task' : 'Add sub task'),
        actions: [
          TextButton(
            onPressed: bloc.save,
            child: const Text('Save'),
          ),
        ],
      ),
      body: BlocConsumer<AddTaskCubit, AddTaskState>(
        builder: (context, AddTaskState state) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: state.isProgress,
                  child: const LinearProgressIndicator(),
                ),
                TextFormField(
                  // TODO(Serdun): Add localization
                  decoration: const InputDecoration(labelText: 'Title'),
                  onChanged: bloc.updateTitleField,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  // TODO(Serdun): Add localization
                  decoration: const InputDecoration(labelText: 'Description'),
                  onChanged: bloc.updateDescriptionField,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: state.taskStatus.name,
                  decoration: const InputDecoration(labelText: 'Status'),
                  items: state.allTaskStatuses
                      .map((it) => DropdownMenuItem<String>(value: it.name, child: Text(it.name)))
                      .toList(),
                  onChanged: (value) => bloc.updateTaskStatusField(TaskStatus.values.byName(value!)),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: state.taskPriority.name,
                  decoration: const InputDecoration(labelText: 'Priority'),
                  items: state.allTaskPriority
                      .map((it) => DropdownMenuItem<String>(value: it.name, child: Text(it.name)))
                      .toList(),
                  onChanged: (value) => bloc.updateTaskPriorityField(TaskPriority.values.byName(value!)),
                ),
              ],
            ),
          ),
        ),
        listener: _listenState,
      ),
    );
  }

  void _listenState(BuildContext context, AddTaskState state) {
    // TODO(Serdun): Add string local resources
    if (state.isSuccess) _popSuccessfulScreen(context, state.title);
    if (state.isFailure) _showFailure(context, state.error!);
  }

  void _popSuccessfulScreen(BuildContext context, String taskTitle) => context
    // TODO(Serdun): Add localization
    ..showSuccessSnackBar('Task $taskTitle successfully created')
    ..pop();

  void _showFailure(BuildContext context, Object error) => context.showErrorSnackBar(error.toString());
}
