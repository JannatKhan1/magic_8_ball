import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
        ),
        body: MagicBall(),
      ),
    ),
  );
}
class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballState = 1;
  void imageDisplay() {
    setState(() {
      ballState = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          imageDisplay();
        },
        child: Image.asset('images/ball$ballState.png'),
      ),

    );
  }
}


