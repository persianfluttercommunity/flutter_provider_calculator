import 'package:flutter/material.dart';

class KeypadButton extends StatelessWidget {
  const KeypadButton({required this.face, required this.onPressed, super.key});
  final Widget face;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: face);
  }
}
