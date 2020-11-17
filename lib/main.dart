import 'file:///C:/Users/joseph/AndroidStudioProjects/bmi-calculator-flutter/lib/routes/result_page.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(BMICalculator());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0XFF0A0E21), // status bar color
  ));
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}