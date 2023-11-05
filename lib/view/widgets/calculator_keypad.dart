import 'package:flutter/material.dart';

class CalculatorKeypad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: keypadContent(),
    );
  }

  List<Widget> keypadContent() {
    List<Widget> lst = [];
    // lst.add(value)
    return lst;
  }
}
