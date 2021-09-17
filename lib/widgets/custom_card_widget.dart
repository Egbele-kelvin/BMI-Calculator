import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final Widget cardChild;
  final Function onTap;

  CustomCard({@required this.cardColor,this.cardChild,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(15.0)
        ),
      ),
    );
  }
}