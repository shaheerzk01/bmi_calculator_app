import 'package:flutter/material.dart';
import '../Constants.dart';



class Icons_card extends StatelessWidget {
  final String? text;
  final IconData? icon;

  Icons_card({required this.text, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          '$text',
          style: kLabelTextStyle,
        )
      ],
    );
  }
}