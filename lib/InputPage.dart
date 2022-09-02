import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xff1D1E33);
const bottomContainerColor = Color(0xffEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                      cardChild: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,color: Colors.red,
                            size: 80.0,
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('MALE',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Color(0xFF8D8E98),
                            ),
                          )
                        ],
                      ),
                      colour: Color(0xff1D1E33)

                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                      cardChild: Column(
                        children: [

                        ],
                      ),
                    colour: Color(0xff1D1E33)

                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
                cardChild: Column(
                  children: [

                  ],
                ),
                colour: activeCardColor),

          ),

          Expanded(
            child: ReuseableCard(
              cardChild: Column(
                children: [

                ],
              ),
                colour: activeCardColor),

          ),
         Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard ({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
    );
  }
  }
