import 'package:todo_or_not_todo/app/app.dart';
import 'package:todo_or_not_todo/bootstrap.dart';

void main() {
  bootstrap(
    (result) {
      return App(
        serviceLocator: result.serviceLocator,
      );
    },
  );
}
