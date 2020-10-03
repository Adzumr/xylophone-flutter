import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          'Click Me',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: GoogleFonts.sourceSansPro(),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.blue, soundNumber: 1),
                buildKey(color: Colors.teal, soundNumber: 2),
                buildKey(color: Colors.grey, soundNumber: 3),
                buildKey(color: Colors.orange, soundNumber: 4),
                buildKey(color: Colors.yellow, soundNumber: 5),
                buildKey(color: Colors.red, soundNumber: 6),
                buildKey(color: Colors.green, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
