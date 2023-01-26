import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(0xFF4C4F5E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      elevation: 6.0,
      child: Icon(icon),
    );
  }
}
