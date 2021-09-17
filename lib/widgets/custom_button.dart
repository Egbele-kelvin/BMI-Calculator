import 'package:flutter/material.dart';

import '../constants.dart';
class CustomButton extends StatelessWidget {
  final Function function;
  final String btnTitle;

  CustomButton({@required this.btnTitle, @required this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
          child: Center(child: Text(btnTitle,style: KButtonText,)),
          margin: EdgeInsets.only(top: 15.0),
          color: KButtonColor,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.1
      ),
    );
  }
}
