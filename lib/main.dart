import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: Color(0xFF0A0D22),
        ),
      ),
    );
  }
}
