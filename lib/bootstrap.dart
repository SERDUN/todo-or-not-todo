import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';

import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:get_it/get_it.dart';

import 'di/di.dart';

Future<void> bootstrap(FutureOr<Widget> Function(BootstrapResult result) builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  hierarchicalLoggingEnabled = true;
  PrintAppender.setupLogging();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = AppBlocObserver();

  final serviceLocator = await configureDependencies();

  final bootstrapResult = BootstrapResult(
    serviceLocator,
  );

  runApp(await builder(bootstrapResult));
}

class AppBlocObserver extends BlocObserver {
  AppBlocObserver();

  final _logger = Logger('AppBlocObserver');

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    _logger.warning('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

class BootstrapResult {
  BootstrapResult(
    this.serviceLocator,
  );

  final GetIt serviceLocator;
}
