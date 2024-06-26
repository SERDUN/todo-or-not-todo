import 'package:flutter/material.dart';

extension BuildContextSnackBar on BuildContext {
  void removeCurrentSnackBar() {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();
  }

  void hideCurrentSnackBar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 3),
    Color? backgroundColor,
    TextStyle? textStyle,
  }) {
    return (ScaffoldMessenger.of(this)..removeCurrentSnackBar()).showSnackBar(SnackBar(
      content: Text(message, style: textStyle ?? TextStyle(color: Theme.of(this).colorScheme.onPrimary)),
      action: action,
      duration: duration,
      backgroundColor: backgroundColor ?? Theme.of(this).snackBarTheme.backgroundColor,
    ));
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showErrorSnackBar(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 5),
  }) {
    return showSnackBar(
      message,
      action: action,
      duration: duration,
      backgroundColor: Theme.of(this).colorScheme.error,
      textStyle: TextStyle(color: Theme.of(this).colorScheme.onError),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccessSnackBar(
    String message, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 5),
  }) {
    return showSnackBar(
      message,
      action: action,
      duration: duration,
      backgroundColor: Theme.of(this).colorScheme.secondary,
      textStyle: TextStyle(color: Theme.of(this).colorScheme.onSecondary),
    );
  }
}
