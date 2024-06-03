import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:domain/domain.dart';

import 'package:todo_or_not_todo/features/features.dart';

import '../consts.dart';
import 'app_routes_enum.dart';

class AppRoute {
  AppRoute(this.serviceLocator);

  final GetIt serviceLocator;

  // TODO(Serdun): Move to global state
  Future<bool> _isUserAuthorized() async {
    final isUserAuthorizedUseCase = serviceLocator.get<IsUserAuthorizedUseCase>();
    return isUserAuthorizedUseCase.execute();
  }

  GoRouter build(BuildContext context) {
    return GoRouter(
      routes: [
        GoRoute(
          name: Routes.main.name,
          path: '/${Routes.main.name}',
          builder: (BuildContext context, GoRouterState state) => Container(),
          redirect: (context, state) async {
            final isAuthorized = await _isUserAuthorized();
            if (!isAuthorized) {
              return '/${Routes.signIn.name}';
            } else {
              return '/${Routes.tasks.name}'; // Redirect to tasks if authorized
            }
          },
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
        ShellRoute(
          builder: (context, state, child) => child,
          routes: [
            StatefulShellRoute.indexedStack(
              builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
                return MainScreen(
                  navigationShell: navigationShell,
                  key: ValueKey(state.pageKey),
                );
              },
              branches: <StatefulShellBranch>[
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      name: Routes.tasks.name,
                      path: '/${Routes.tasks.name}',
                      builder: (BuildContext context, GoRouterState state) => BlocProvider(
                        create: (context) => TasksBloc(serviceLocator.get()),
                        child: const TasksScreen(),
                      ),
                      redirect: (context, state) async {
                        final isAuthorized = await _isUserAuthorized();
                        if (!isAuthorized) {
                          return '/${Routes.signIn.name}';
                        }
                        return null; // No redirect if authorized
                      },
                    )
                  ],
                ),
                StatefulShellBranch(
                  routes: <RouteBase>[
                    GoRoute(
                      path: '/profile',
                      builder: (BuildContext context, GoRouterState state) => BlocProvider(
                        create: (BuildContext context) => ProfileCubit(serviceLocator.get()),
                        child: const ProfileScreen(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          name: Routes.taskDetails.name,
          path: '/${Routes.taskDetails.name}',
          builder: (BuildContext context, GoRouterState state) {
            final queryId = state.uri.queryParameters[queryIdText];
            final id = int.tryParse(queryId!)!;
            return BlocProvider(
              create: (context) => TasksDetailsBloc(),
              child: TasksDetailsScreen(
                id: id,
              ),
            );
          },
          redirect: (context, state) async {
            final isAuthorized = await _isUserAuthorized();
            if (!isAuthorized) {
              return '/${Routes.signIn.name}';
            }
            return null; // No redirect if authorized
          },
        ),
      ],
      initialLocation: '/${Routes.tasks.name}',
    );
  }
}
