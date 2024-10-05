import 'package:bmi_calc/components/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}


