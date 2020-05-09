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
class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Image.asset('images.ball1.png'),
        ),
      ],
    );
  }
}

