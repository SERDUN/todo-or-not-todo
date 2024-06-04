enum TaskStatus {
  open('open'),
  toDo('to_do'),
  inProgres('in_progres'),
  done('done');

  const TaskStatus(this.key);

  final String key;
}
