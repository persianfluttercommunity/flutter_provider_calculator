import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/view_models/calculator_model.dart';
import 'package:provider/provider.dart';

class KeypadButton extends StatelessWidget {
  const KeypadButton({required this.face, required this.onPressed, super.key});
  final Widget face;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: face);
  }

  factory KeypadButton.numButton(int number, BuildContext context) {
    return KeypadButton(
      face: Text(number.toString()),
      onPressed: () {
        Provider.of<CalculatorModel>(context, listen: false).addNumber(number);
      },
    );
  }
}
