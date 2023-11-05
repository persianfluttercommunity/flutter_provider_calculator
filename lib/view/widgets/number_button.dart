import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/view_models/calculator_model.dart';
import 'package:provider/provider.dart';

class NumberButton extends ElevatedButton {
  NumberButton(int number, BuildContext context, {super.key})
      : super(
            onPressed: () {
              Provider.of<CalculatorModel>(context, listen: false)
                  .addNumber(number);
            },
            child: Text(number.toString()));
}
