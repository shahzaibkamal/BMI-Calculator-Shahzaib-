import 'package:flutter/material.dart';
import 'constantFile.dart';
import 'container_file.dart';
import 'input_page.dart';
import 'constantFile.dart';

class ResultScreen extends StatelessWidget {


  ResultScreen({required this.interpretation,required this.bmiResult,required this.resultText});
  final String interpretation;
  final String bmiResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Your Result', style: kTittleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerRepeated(
              colors: deactiveColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kresultStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kbmitStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: interpretationStyle,
                  ),
                ],

              ), onPressed: () {},
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text('ReCalculate',
                    style: klargeButtons,),
                ),

                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),),
          ),
        ],
      ),
    );
  }
}