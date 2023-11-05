import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/constant/operators.dart';

class CalculatorModel extends ChangeNotifier {
  double firstNumber = 0.0;
  double secondNumber = 0.0;
  CalculatorOperation operation = CalculatorOperation.none;

  TextEditingController editorController = TextEditingController(text: "0");

  void addNumber(int n) {
    if (operation == CalculatorOperation.none) {
      firstNumber = firstNumber * 10 + n;
    } else {
      // secondNumber =
    }
  }

  void removeNumber() {}
  void clearScreen() {}

  void setOperation() {}

  void calculate() {}
}
