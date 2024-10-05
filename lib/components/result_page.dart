// ignore_for_file: must_be_immutable

import 'package:bmi_calc/screen/const.dart';
import 'input_page.dart';
import 'reuse_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, this.bmiResult, this.innterpretation, this.resultText});
  String? bmiResult;
  String? resultText;
  String? innterpretation;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
          backgroundColor: const Color(0xFF0A0E21),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text("Your Result", style: kTitleTextStyle,),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InputPage()));
              },
              child: Container(
                color: kBottomContainerColor,
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.only(bottom: 20.0),
                width: double.infinity,
                height: kBottomContainerHeight,
                child: const Center(
                child: Text("Re-Calculate", style: kLargeButtonTextStyle,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}