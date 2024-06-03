import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:domain/domain.dart';

import '../bloc/tasks_add_cubit.dart';

class TasksAddscreen extends StatefulWidget {
  @override
  _TasksAddscreenState createState() => _TasksAddscreenState();
}

class _TasksAddscreenState extends State<TasksAddscreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<TasksAddCubit>(context);

    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new task'),
        actions: [TextButton(onPressed: () {}, child: const Text('Save'))],
      ),
      body: BlocConsumer<TasksAddCubit, TasksAddState>(
        builder: (context, TasksAddState state) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
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
                  decoration: InputDecoration(labelText: state.taskStatus.name),
                  items: state.taskStatuses
                      .map((it) => DropdownMenuItem<String>(value: it.name, child: Text(it.name)))
                      .toList(),
                  onChanged: (value) => bloc.updateTaskStatusField(TaskStatus.values.byName(value!)),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Text('Sub tasks ', style: theme.titleMedium),
                    const Expanded(child: Divider()),
                    const SizedBox(width: 8),
                    TextButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Add subtask'),
                            const SizedBox(width: 8),
                            Icon(Icons.add_sharp),
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                // TODO(Serdun): finish implementation of sub task
                Column(
                  children: [
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Icon(Icons.check_box),
                            SizedBox(width: 16),
                            Text('Add auth screen'),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Icon(Icons.check_box),
                            SizedBox(width: 16),
                            Text('Add auth screen'),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Icon(Icons.check_box),
                            SizedBox(width: 16),
                            Text('Add auth screen'),
                          ],
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        listener: (BuildContext context, TasksAddState state) {},
      ),
    );
  }
}
