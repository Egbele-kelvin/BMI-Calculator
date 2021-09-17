import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/custom_button.dart';
import 'package:bmi_calculator/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
 // const ResultPage({Key? key}) : super(key: key);

  final String resultText;
  final String interpretation;
  final String bmiResult;
  ResultPage({@required this.resultText,@required this.interpretation, @required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
            child: Text('Your Result',style: KResultTextStyle,),
          ),),
          Expanded(
            flex: 5,
              child:CustomCard(
                cardColor: KActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),style: KColorTextStyle,),
                    Text(bmiResult,
                      textAlign: TextAlign.center,
                      style: KBMIResultTextStyle,),
                    Text(interpretation,
                      textAlign: TextAlign.center,
                      style: KBMIDescriptionTextStyle,),
                  ],
                ),
              ),
          ),
          CustomButton(
            btnTitle: 'RE-CALCULATE',
            function: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

