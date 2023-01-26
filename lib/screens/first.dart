import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/Reuseable_card.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class firstRoute extends StatelessWidget {
  const firstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('images/pngwing.com.png'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text('Body Mass Index', style: kHeadingStyle),
                  ),
                  Text(
                    'Body Mass Index (BMI) is a person\’s weight in kilograms (or pounds) divided by the square of height in meters (or feet). A high BMI can indicate high body fatness. BMI screens for weight categories that may lead to health problems, but it does not diagnose the body fatness or health of an individual.',
                    style: kLabelTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  ElevatedButtonTheme(
                    data: ElevatedButtonThemeData(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kBottomContainerColor,
                        side: BorderSide(width: 2, color: Colors.black),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                    ),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Input_page();
                          }));
                        },
                        child: Text('START', style: kLargeButtonTextStyle)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
