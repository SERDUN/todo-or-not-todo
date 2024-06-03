import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthScreenSwitcher extends StatelessWidget {
  const AuthScreenSwitcher({
    required this.infoTitle,
    required this.onTap,
    required this.activeTitle,
    super.key,
  });

  final String infoTitle;
  final String activeTitle;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: '$infoTitle? ',
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface.withOpacity(0.75),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: activeTitle,
            style: textTheme.titleMedium!.copyWith(color: colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
