import 'package:bmi_calculator/components/Bottom_button.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/Reuseable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

  final String? bmiResult;
  final String? resultText;
  final String? interpretation;

  ResultPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child:
                  Center(child: Text('Your Result', style: kTittleTextStyle)),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('$resultText'.toUpperCase(), style: kResultTextStyle),
                  Text('$bmiResult', style: kBMITextStyle),
                  Text('$interpretation',
                      style: kBodyTextStyle, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Bottom_button(onTap: () {
            Navigator.pop(context);
          }, Tittle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
