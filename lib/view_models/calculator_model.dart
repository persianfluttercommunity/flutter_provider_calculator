import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/constant/operators.dart';

class CalculatorModel extends ChangeNotifier {
  double result = 0.0;
  double temp = 0.0;
  CalculatorOperation operation = CalculatorOperation.none;

  TextEditingController editorController = TextEditingController(text: "0");

  void addNumber(int n) {
    result = result * 10 + n;
    editorController.text = result.toString();
    notifyListeners();
  }

  void removeNumber() {
    result = result / ~10;
    notifyListeners();
  }

  void clearScreen() {}

  void setOperation(CalculatorOperation operation) {
    this.operation = operation;
    temp = result;
    result = 0.0;
    notifyListeners();
  }

  void calculate() {
    switch (operation) {
      case CalculatorOperation.none:
        break;
      case CalculatorOperation.summation:
        result = result + temp;
        break;
      case CalculatorOperation.subtraction:
        result = result - temp;
        break;
      case CalculatorOperation.division:
        result = result / temp;
        break;
      case CalculatorOperation.multiplication:
        result = result * temp;
        break;
    }
    operation = CalculatorOperation.none;
    temp = 0.0;
    notifyListeners();
  }
}
