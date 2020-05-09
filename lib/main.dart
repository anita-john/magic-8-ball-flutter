import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black12,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.black12,
          ),
           body: MagicBall()
        )
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ballAnswer = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images.ball$ballAnswer.png'),
            ),
          ),
        ],
      ),
    );
  }
}


