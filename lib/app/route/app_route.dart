import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:todo_or_not_todo/features/features.dart';

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
          builder: (BuildContext context, GoRouterState state) => Container(),
        ),
        GoRoute(
          name: Routes.signIn.name,
          path: '/${Routes.signIn.name}',
          builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => SignInBloc(serviceLocator.get()),
            child: SignInScreen(),
          ),
        ),
        GoRoute(
          name: Routes.signUp.name,
          path: '/${Routes.signUp.name}',
          builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => SignUpBloc(serviceLocator.get()),
            child: SignUpScreen(),
          ),
        ),
        GoRoute(
          name: Routes.tasks.name,
          path: '/${Routes.tasks.name}',
          builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => TasksBloc(),
            child: const TasksScreen(),
          ),
        ),
        GoRoute(
          name: Routes.taskDetails.name,
          path: '/${Routes.taskDetails.name}',
          builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => TasksDetailsBloc(),
            child: const TasksDetailsScreen(),
          ),
        ),
      ],
      initialLocation: '/${Routes.tasks.name}',
    );
  }
}
