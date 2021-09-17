import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function function;

  RoundIconButton({@required this.icon,@required this.function});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 8.0,
      onPressed: function,
      fillColor: Color(0xff4c4f5e),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 45.0,
      ),
    );
  }
}