import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    required this.labelText,
    required this.hintText,
    required this.errorText,
    this.controller,
    super.key,
    this.obscureText = false,
    this.onVisibilityToggle,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final String? errorText;

  final ValueChanged<String>? onChanged;
  final VoidCallback? onVisibilityToggle;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscureText = false;

  @override
  void initState() {
    _isObscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final obscureText = widget.obscureText
        ? IconButton(
            icon: Icon(_getObscureIcon()),
            onPressed: _onVisibilityToggle,
          )
        : null;

    return TextField(
      controller: widget.controller,
      obscureText: _isObscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        errorText: widget.errorText,
        suffixIcon: obscureText,
      ),
      onChanged: widget.onChanged,
    );
  }

  IconData _getObscureIcon() {
    return _isObscureText ? Icons.visibility_off : Icons.visibility;
  }

  void _onVisibilityToggle() {
    _isObscureText = !_isObscureText;
    setState(() {});
  }
}
