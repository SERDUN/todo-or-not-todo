import 'package:flutter/material.dart';

class DimensionCircularProgressIndicator extends StatelessWidget {
  const DimensionCircularProgressIndicator({
    super.key,
    this.dimension = double.infinity,
    this.strokeWidth = 1,
  });

  final double dimension;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: dimension,
      child: CircularProgressIndicator(
        strokeWidth: strokeWidth,
      ),
    );
  }
}
