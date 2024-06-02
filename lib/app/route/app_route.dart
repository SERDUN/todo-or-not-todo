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
            create: (context) => SignInBloc(),
            child: SignInScreen(),
          ),
        ),
        GoRoute(
          name: Routes.signUp.name,
          path: '/${Routes.signUp.name}',
          builder: (BuildContext context, GoRouterState state) => BlocProvider(
            create: (context) => SignUpBloc(),
            child: SignUpScreen(),
          ),
        ),
      ],
      initialLocation: '/${Routes.signIn.name}',
    );
  }
}
