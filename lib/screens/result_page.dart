import 'dart:io';

import 'file:///C:/Users/joseph/AndroidStudioProjects/bmi-calculator-flutter/lib/components/bottom_bar.dart';
import 'package:bmi_calculator/constants.dart';
import 'file:///C:/Users/joseph/AndroidStudioProjects/bmi-calculator-flutter/lib/components/main_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  ResultPage({@required this.bmi, @required this.result, @required this.interpretation});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppBarTitle),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'Your Result',
                  style: kResultTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MainCard(
              cardColor: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      result,
                      style: kResultTextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            child: BottomBar(barTitle: 'RE-CALCULATE'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
