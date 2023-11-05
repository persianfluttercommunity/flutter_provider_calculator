import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/constant/operators.dart';
import 'package:flutter_provider_calculator/view_models/calculator_model.dart';
import 'package:provider/provider.dart';

class ActionButton extends ElevatedButton {
  ActionButton(CalculatorOperation operation, Widget icon, BuildContext context,
      {super.key})
      : super(
            onPressed: () {
              Provider.of<CalculatorModel>(context, listen: false)
                  .setOperation(operation);
            },
            child: icon);
}
