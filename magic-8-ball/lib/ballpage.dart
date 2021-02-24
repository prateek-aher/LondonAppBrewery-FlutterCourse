import 'package:flutter/material.dart';
import 'package:magic_8_ball/ball.dart';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}
