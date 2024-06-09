import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../consts.dart';

class AuthPageContainer extends StatelessWidget {
  const AuthPageContainer({
    required this.body,
    required this.title,
    super.key,
    required this.bottom,
  });

  final String title;

  final Widget body;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: textTheme.displaySmall),
              const SizedBox(height: spacingLarge),
              Expanded(child: body),
              Align(child: bottom)
            ],
          ),
        ),
      ),
    );
  }
}
