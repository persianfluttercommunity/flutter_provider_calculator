import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/view/widgets/calculator_keypad.dart';

/// all of project is in this Stateless Widget
class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [TextField(), Expanded(child: CalculatorKeypad())],
        ),
      ),
    );
  }
}
