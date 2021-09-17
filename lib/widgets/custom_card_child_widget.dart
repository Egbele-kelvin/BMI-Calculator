import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CustomCardChild extends StatelessWidget {
  final String sex;
  final IconData icon;

  CustomCardChild({@required this.icon,@required this.sex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(height: 10.0,),
        Text(sex,style: KLabelText,)
      ],
    );
  }
}
