enum TaskStatus {
  open('open'),
  toDo('to_do'),
  inProgress('in_progress'),
  done('done');

  const TaskStatus(this.key);

  final String key;
}
