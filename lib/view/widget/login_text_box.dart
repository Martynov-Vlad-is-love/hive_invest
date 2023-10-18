import 'package:flutter/material.dart';

/// Custom text box for login screen.
class LoginTextBox extends StatelessWidget {
  /// Color of the widget.
  final Color color;

  /// Controller that provide manipulating with incoming data.
  final TextEditingController controller;

  /// Constructor.
  const LoginTextBox({
    required this.controller,
    required this.color,
    super.key,
  });

  static const _borderRadius = 20.0;
  static const _height = 50.0;
  static const _width = 300.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      height: _height,
      width: _width,
      child: TextFormField(controller: controller),
    );
  }
}
