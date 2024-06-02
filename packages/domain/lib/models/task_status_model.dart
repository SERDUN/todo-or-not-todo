enum TaskStatus {
  open('Open'),
  toDo('To do'),
  inProgres('In progres'),
  done('Done');

  const TaskStatus(this.key);

  final String key;
}
