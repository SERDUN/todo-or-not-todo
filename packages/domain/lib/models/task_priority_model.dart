enum TaskPriority {
  minor('Minor'),
  major('Major'),
  critical('Critical'),
  blocked('Blocked'),
  trivial('Trivial');

  const TaskPriority(this.key);

  final String key;
}
