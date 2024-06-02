enum Routes {
  main('main'),
  signIn('sign-in'),
  signUp('sign-up'),
  tasks('tasks');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
