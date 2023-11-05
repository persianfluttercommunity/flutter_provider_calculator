import 'package:flutter/material.dart';
import 'package:flutter_provider_calculator/constant/theme.dart';
import 'package:flutter_provider_calculator/view/pages/calculator_page.dart';
import 'package:flutter_provider_calculator/view_models/calculator_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    /// for more than one view models use MultiProvider
    /// if you have just one view model, use ChangeNotifierProvider instead.
    /// here for best undrestanding we use MultiProvider.
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CalculatorModel()),

        /// if you have more view models (ChangeNotifier here ) put them here.
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Calculator',
      theme: theme,
      home: const CalculatorPage(),
    );
  }
}
