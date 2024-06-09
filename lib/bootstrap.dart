import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';

import 'di/di.dart';

Future<void> bootstrap(FutureOr<Widget> Function(BootstrapResult result) builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final serviceLocator = await configureDependencies();

  final bootstrapResult = BootstrapResult(
    serviceLocator,
  );

  runApp(await builder(bootstrapResult));
}

class BootstrapResult {
  BootstrapResult(
    this.serviceLocator,
  );

  final GetIt serviceLocator;
}
