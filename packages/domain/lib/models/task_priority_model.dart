enum TaskPriority {
  minor('minor'),
  major('major'),
  critical('critical'),
  blocked('blocked'),
  trivial('Trivial');

  const TaskPriority(this.key);

  final String key;
}
