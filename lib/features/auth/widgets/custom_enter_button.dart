import 'package:flutter/material.dart';

import 'dimension_circular_progress_indicator.dart';

class CustomEnterButton extends StatelessWidget {
  const CustomEnterButton({
    required this.text,
    required this.buttonSize,
    super.key,
    this.progress = false,
    this.onPressed,
  });

  final String text;
  final bool progress;
  final double buttonSize;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: double.infinity),
      child: ElevatedButton(
        onPressed: progress ? null : onPressed,
        child: progress ? const DimensionCircularProgressIndicator(dimension: 24) : Text(text),
      ),
    );
  }
}
