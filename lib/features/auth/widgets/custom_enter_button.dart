import 'package:flutter/material.dart';

import '../consts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    required this.text,
    required this.buttonSize,
    super.key,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final String text;
  final bool isLoading;
  final double buttonSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(buttonSize),
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonBorderRadius),
        ),
      ),
      child: isLoading
          ? CircularProgressIndicator(
              color: Theme.of(context).indicatorColor,
            )
          : Text(
              text,
              style: TextStyle(
                color: Theme.of(context).focusColor,
              ),
            ),
    );
  }
}
