import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/tasks_details_bloc.dart';

class TasksDetailsScreen extends StatefulWidget {
  const TasksDetailsScreen({super.key});

  @override
  State<TasksDetailsScreen> createState() => _TasksDetailsScreenState();
}

class _TasksDetailsScreenState extends State<TasksDetailsScreen> {
  TasksDetailsBloc get _bloc => BlocProvider.of<TasksDetailsBloc>(context);

  @override
  void initState() {
    _bloc.getTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksDetailsBloc, TasksDetailsState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                if (state.status == TasksDetailsStatus.loading)
                  Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                else
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: state.task?.title,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        TextSpan(
                          text: state.task?.content,
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
              ],
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
}
