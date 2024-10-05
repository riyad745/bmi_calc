import 'package:bmi_calc/screen/const.dart';
import 'input_page.dart';
import 'reuse_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.innterpretation, this.resultText});
  String? bmiResult;
  String? resultText;
  String? innterpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("BMI Calculator"),
          backgroundColor: const Color(0xFF0A0E21),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your Result", style: kTitleTextStyle,),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseCard(
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Text(resultText!.toUpperCase(), style: kResultTextStyle,),
                    ),
                    Center(
                      child: Text(bmiResult!, style: kBmiTextStyle,),
                    ),
                    Center(
                      child: Text(innterpretation!, 
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,),
                    ),
                  ],
                ),
                colour: kActiveCardColor
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                child: Text("Re-Calculate", style: kLargeButtonTextStyle,),
                ),
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}