import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'container_file.dart';
import 'icon_file.dart';
import 'constantFile.dart'; // Corrected import
import 'resultFile.dart';
import 'calculatorFile.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male; // Initialized to Gender.male
  int sliderHeight = 180;
  int sliderWeight = 60;
  int sliderAge = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Body Mass Index Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContainerRepeated(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardWidget: RepeatedIcon(
                      color: selectedGender == Gender.male ? activeColor : deactiveColor,
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                    colors: selectedGender == Gender.male ? activeColor : deactiveColor,
                  ),
                ),
                Expanded(
                  child: ContainerRepeated(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardWidget: RepeatedIcon(
                      color: selectedGender == Gender.female ? activeColor : deactiveColor,
                      iconData: FontAwesomeIcons.female,
                      label: 'Female',
                    ),
                    colors: selectedGender == Gender.female ? activeColor : deactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ContainerRepeated(
              colors: Color(0xFF0E6E0E),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kLabelStyle,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        sliderHeight.toString(),
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  Slider(

                    value: sliderHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFF4B4949),
                    inactiveColor: Color(0xD0EAE6E5),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                  ),
                ],
              ), onPressed: () {  },
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ContainerRepeated(
                    colors: Color(0xFF0E6E0E),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text(
                          'Weight',
                          style: kLabelStyle,
                        ),
                        Text(
                          sliderWeight.toString(),
                          style: kLabelStyle,

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIcon(iconData: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  sliderWeight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ) ,
                            RoundIcon(iconData: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  sliderWeight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  child: ContainerRepeated(
                    colors: Color(0xFF0E6E0E),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text(
                          'Age',
                          style: kLabelStyle,
                        ),
                        Text(
                          sliderAge.toString(),
                          style: kLabelStyle,

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIcon(iconData: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  sliderAge--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ) ,
                            RoundIcon(iconData: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  sliderAge++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              CalculatorBrain  calc= CalculatorBrain(height: sliderHeight,weight: sliderWeight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(), // Use getInterpretation here
                  ),
                ),
              );


            },
            child: Container(
              child: Center(
                child: Text('Calculate',
                  style: klargeButtons,),
              ),

              color: Color(0xFF851E27),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            ),),

        ],
      ),
    );
  }
}


class RoundIcon extends StatelessWidget {
  RoundIcon({required this.iconData, required this.onPress});

  final IconData iconData;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}



