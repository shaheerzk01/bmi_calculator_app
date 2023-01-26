import 'package:bmi_calculator/screens/first.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const BMI_calculator());
}

class BMI_calculator extends StatelessWidget {
  const BMI_calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: firstRoute(),
    );
  }
}

