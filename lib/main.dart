import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Ballapp(),
      ),
    );

class Ballapp extends StatefulWidget {
  Ballapp({Key key}) : super(key: key);

  @override
  _BallappState createState() => _BallappState();
}

class _BallappState extends State<Ballapp> {
  int answer = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Container(
        color: Colors.blue[400],
        child: Center(
          child: GestureDetector(
            onTap: (){
              setState(() {
                answer = Random().nextInt(5)+1;
              });
            },
                      child: Container(
              
              child: Image.asset('images/ball$answer.png'),
            ),
          ),
        ),
      ),
    );
  }
}
