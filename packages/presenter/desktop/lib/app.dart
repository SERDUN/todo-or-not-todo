import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'route/app_route.dart';

class App extends StatefulWidget {
  const App({
    required this.serviceLocator,
    super.key,
  });

  final GetIt serviceLocator;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final route = AppRoute(widget.serviceLocator).build(context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: route.routeInformationProvider,
      routeInformationParser: route.routeInformationParser,
      routerDelegate: route.routerDelegate,
      backButtonDispatcher: route.backButtonDispatcher,
    );
  }
}
