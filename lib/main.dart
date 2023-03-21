
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Ball(),
));

class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.blueGrey[300],
        appBar: AppBar(
          title: Text(
              'Ask Me Anything',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 3.0,
              fontFamily: 'IndieFlower'
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[600],
        ),

        body: TextButton(
              onPressed: (){
                setState(() {
                  ballNumber = Random().nextInt(5)+1;
                });
                print('This is ball$ballNumber');
              },
              child: Center(
                  child: Image.asset('assets/ball$ballNumber.png')
              ),
            ),
    );
  }
}

