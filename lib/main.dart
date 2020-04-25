import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded buildkey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red,number: 1),
              buildkey(color: Colors.green,number: 2),
              buildkey(color: Colors.blue,number: 3),
              buildkey(color: Colors.yellow,number: 4),
              buildkey(color: Colors.orange,number: 5),
              buildkey(color: Colors.white,number: 6),
              buildkey(color: Colors.pink,number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
