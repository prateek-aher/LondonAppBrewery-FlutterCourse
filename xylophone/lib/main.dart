import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XyloKey(
                keyNum: 1,
                color: Colors.red,
              ),
              XyloKey(
                keyNum: 2,
                color: Colors.orange,
              ),
              XyloKey(
                keyNum: 3,
                color: Colors.yellow,
              ),
              XyloKey(
                keyNum: 4,
                color: Colors.green,
              ),
              XyloKey(
                keyNum: 5,
                color: Colors.blue,
              ),
              XyloKey(
                keyNum: 6,
                color: Colors.indigo,
              ),
              XyloKey(
                keyNum: 7,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XyloKey extends StatelessWidget {
  XyloKey({
    this.keyNum,
    this.color,
  });

  final int keyNum;

  final MaterialColor color;

  void _playNote(int n) {
    final player = AudioCache();
    player.load('note$n.wav');
    player.play('note$n.wav');
    player.clear('note$n.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            _playNote(keyNum);
          },
          child: Text(''),
          style:
              ButtonStyle(backgroundColor: MaterialStateProperty.all(color))),
    );
  }
}
