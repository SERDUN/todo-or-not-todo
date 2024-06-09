import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:mobile/l10n/l10n.dart';

import '../route/app_route.dart';

class MobileApp extends StatefulWidget {
  const MobileApp({
    required this.serviceLocator,
    super.key,
  });

  final GetIt serviceLocator;

  @override
  State<MobileApp> createState() => _MobileAppState();
}

class _MobileAppState extends State<MobileApp> {
  late final route = AppRoute(widget.serviceLocator).build(context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routeInformationProvider: route.routeInformationProvider,
      routeInformationParser: route.routeInformationParser,
      routerDelegate: route.routerDelegate,
      backButtonDispatcher: route.backButtonDispatcher,
    );
  }
}
