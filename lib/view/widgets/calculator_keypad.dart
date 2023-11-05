import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/view/widgets/keypad_button.dart';

class CalculatorKeypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: keypadContent(context),
    );
  }

  List<Widget> keypadContent(BuildContext context) {
    List<Widget> lst = [];
    lst.add(KeypadButton.numButton(7, context));
    lst.add(KeypadButton.numButton(8, context));
    lst.add(KeypadButton.numButton(9, context));
    lst.add(ElevatedButton(onPressed: () {}, child: Icon(Icons.remove)));
    lst.add(KeypadButton.numButton(4, context));
    lst.add(KeypadButton.numButton(5, context));
    lst.add(KeypadButton.numButton(6, context));
    lst.add(ElevatedButton(onPressed: () {}, child: Icon(Icons.add)));
    lst.add(KeypadButton.numButton(1, context));
    lst.add(KeypadButton.numButton(2, context));
    lst.add(KeypadButton.numButton(3, context));
    lst.add(ElevatedButton(onPressed: () {}, child: Icon(Icons.close)));
    lst.add(ElevatedButton(onPressed: () {}, child: Icon(Icons.backspace)));
    lst.add(ElevatedButton(onPressed: () {}, child: Text("0")));
    lst.add(ElevatedButton(onPressed: () {}, child: Text("=")));
    lst.add(
        ElevatedButton(onPressed: () {}, child: Icon(Icons.percent_rounded)));
    return lst;
  }
}
