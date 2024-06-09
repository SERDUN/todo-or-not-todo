import 'package:todo_or_not_todo/bootstrap.dart';

import 'app.dart';

void main() {
  bootstrap(
    (result) {
      return App(
        serviceLocator: result.serviceLocator,
      );
    },
  );
}
