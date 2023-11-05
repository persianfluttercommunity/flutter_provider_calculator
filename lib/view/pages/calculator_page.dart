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
          constraints: const BoxConstraints(maxWidth: 400, maxHeight: 600),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Consumer<CalculatorModel>(
                          builder: (context, model, child) {
                            return TextField(
                              readOnly: true,
                              controller: model.editorController,
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Provider.of<CalculatorModel>(context, listen: false)
                                .clearScreen();
                          },
                          child: const Text("Clear")),
                    ],
                  )),
              const Expanded(child: CalculatorKeypad())
            ],
          ),
        ),
      ),
    );
  }
}
