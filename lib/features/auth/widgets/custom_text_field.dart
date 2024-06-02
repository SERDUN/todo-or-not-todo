import 'package:flutter/material.dart';

import '../consts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.isValid,
    required this.errorText,
    super.key,
    this.obscureText = false,
    this.onVisibilityToggle,
    this.visibilityIcon,
    this.onChanged,
  });

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final bool isValid;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onVisibilityToggle;
  final Icon? visibilityIcon;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: isValid ? null : errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        suffixIcon: visibilityIcon != null
            ? IconButton(
                icon: visibilityIcon!,
                onPressed: onVisibilityToggle,
              )
            : null,
      ),
      onChanged: onChanged,
    );
  }
}
