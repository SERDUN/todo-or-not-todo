import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'app_routes_enum.dart';

class AppRoute {
  AppRoute(this.serviceLocator);

  final GetIt serviceLocator;

  GoRouter build(BuildContext context) {
    return GoRouter(
      routes: [
        GoRoute(
          name: Routes.main.name,
          path: '/${Routes.main.name}',
          builder: (BuildContext context, GoRouterState state) => Container(
            child: Scaffold(
              body: Text("Not implemented yet"),
            ),
          ),
        ),
      ],
      initialLocation: '/${Routes.main.name}',
    );
  }
}
