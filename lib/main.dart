import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow.shade900,
        appBar: AppBar(
          backgroundColor: Colors.yellow.shade900,
          title: Text('Dicee'),
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
  var leftDiceImageChanger = 1;
  var rightDiceImageChanger = 1;

  void DiceChangeMethod() {
    setState(() {
      leftDiceImageChanger = Random().nextInt(6) + 1;
      rightDiceImageChanger = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  DiceChangeMethod();
                },
                child: Image.asset('images/dice$leftDiceImageChanger.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  DiceChangeMethod();
                },
                child: Image.asset('images/dice$rightDiceImageChanger.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
