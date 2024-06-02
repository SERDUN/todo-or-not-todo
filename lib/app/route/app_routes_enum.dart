enum Routes {
  main('main'),
  signIn('sign-in'),
  signUp('sign-up'),
  tasks('tasks'),
  taskDetails('task_details');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
