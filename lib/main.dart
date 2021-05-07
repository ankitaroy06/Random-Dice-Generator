import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[400],
        appBar: AppBar(
          backgroundColor: Colors.orange[400],
          title: Text(
            'Dice',
            style: TextStyle(
                color: Colors.orange[100], fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: DiceBody(),
      ),
    ),
  );
}

class DiceBody extends StatefulWidget {
  @override
  _DiceBodyState createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
