enum Routes {
  main('main');

  const Routes(this.name);

  final String name;

  @override
  String toString() => name;
}
