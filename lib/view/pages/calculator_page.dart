import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/view/widgets/calculator_keypad.dart';
import 'package:flutter_provider_calculator/view_models/calculator_model.dart';
import 'package:provider/provider.dart';

/// all of project is in this Stateless Widget
class CalculatorPage extends StatelessWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400, maxHeight: 600),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Consumer<CalculatorModel>(
                  builder: (context, model, child) {
                    return TextField(
                      readOnly: true,
                      controller: model.editorController,
                    );
                  },
                ),
              ),
              Expanded(child: CalculatorKeypad())
            ],
          ),
        ),
      ),
    );
  }
}
