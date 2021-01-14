import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random random = new Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = getRandom();
                    rightDiceNumber = getRandom();
                  });
                },
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = getRandom();
                    rightDiceNumber = getRandom();
                  });
                },
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int getRandom() {
  Random random = new Random();
  int number = random.nextInt(6) + 1;
  return number;
}
