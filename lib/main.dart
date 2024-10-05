import 'package:bmi_calc/components/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}


class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: const InputPage(),
    );
  }
}


