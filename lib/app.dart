import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:mobile/app.dart' as mobile;

import 'package:todo_or_not_todo/widgets/widgets.dart';

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
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return ResponsiveBreakpoints.builder(
        child: Builder(builder: (context) {
          return ResponsiveWidget(
            desktop: Container(
              color: Colors.red,
            ),
            mobile: mobile.App(
              serviceLocator: widget.serviceLocator,
            ),
          );
        }),
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      );
    });
  }
}
