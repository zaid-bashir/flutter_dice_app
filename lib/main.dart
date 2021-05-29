import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Dice());
}
class Dice extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Dice App",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            "Simple Dice App",
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: new DicePage(),
      ),
    );
  }
}
class DicePage extends StatefulWidget
{
  @override
  _DicePageState createState() => _DicePageState();
    
}
class _DicePageState extends State<DicePage>
{
  var leftDiceNum = 1;
  var rightDiceNum = 1;
  void diceChangeFace()
  {
    setState(() {
                              //Random().nextInt(6) actually generates the numbers
                              //from 0 to 6-1,whenever 0 comes the image will be
                              //disappeared because there is no image named dice0.png,
                              //hence we have to increase it by 1,so that we will always
                              //get a number from 1 to 7-1. 
                              leftDiceNum = Random().nextInt(6) + 1;
                              rightDiceNum = Random().nextInt(6) + 1;
                            });
  }
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Row(
            children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: (){
                            diceChangeFace();
                      },
                      child: Image(
                      image: AssetImage("images/dice$leftDiceNum.png"),
                      ),
                  ),
              ),
              Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: (){
                              diceChangeFace();
                      },
                      child: Image(
                      image: AssetImage("images/dice$rightDiceNum.png"),
                      ),
                  ),
              ),
            ],
      ),
    );
  }
}