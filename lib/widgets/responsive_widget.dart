import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    this.desktop,
    this.tablet,
    this.mobile,
  });

  final Widget? desktop;
  final Widget? tablet;
  final Widget? mobile;

  @override
  Widget build(BuildContext context) {
    // Desktop
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      return desktop ?? tablet ?? mobile!;
    }

    // Tablet
    if (ResponsiveBreakpoints.of(context).isTablet) {
      return tablet ?? mobile ?? desktop!;
    }

    // Mobile
    return mobile ?? tablet ?? desktop!;
  }
}
