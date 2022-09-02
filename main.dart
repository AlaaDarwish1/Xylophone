import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('song$num.wav'));
    // add some extra sounds and number them.
  }

  Expanded buildKey({colors = Colors.black12, int num = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colors),
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
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
              buildKey(colors: Colors.green, num: 1),
              buildKey(colors: Colors.red, num: 2),
              buildKey(colors: Colors.yellow, num: 3),
              buildKey(colors: Colors.lightBlue, num: 4),
              buildKey(colors: Colors.purple, num: 5),
              buildKey(colors: Colors.blueGrey, num: 6),
              buildKey(colors: Colors.pink, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
