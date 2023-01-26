import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
import '../screens/results_page.dart';

class Bottom_button extends StatelessWidget {

  final String? Tittle;
  final VoidCallback? onTap;

  Bottom_button({@required this.onTap, @required this.Tittle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text('$Tittle', style: kLargeButtonTextStyle)),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10.0),
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
