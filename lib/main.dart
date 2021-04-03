import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded sound_button(int number, Color color) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$number.wav');
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                sound_button(1, Colors.pink[200]),
                sound_button(2, Colors.orange[300]),
                sound_button(3, Colors.yellow[400]),
                sound_button(4, Colors.lightGreen[400]),
                sound_button(5, Colors.green[700]),
                sound_button(6, Colors.lightBlue),
                sound_button(7, Colors.deepPurple[400]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
