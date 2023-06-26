import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int num) async {
    AudioPlayer player = AudioPlayer();
    await player.play(
      AssetSource('note$num.wav'),
    );
  }

  TextButton buildTextButton(int soundnumber, Color color) {
    return TextButton(
      onPressed: () {
        playSound(soundnumber);
      },
      child: Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          height: 40.0,
          // width: 100.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTextButton(1, Colors.red),
              buildTextButton(2, Colors.orange),
              buildTextButton(3, Colors.yellow),
              buildTextButton(4, Colors.green),
              buildTextButton(5, Colors.blue),
              buildTextButton(6, Colors.indigo),
              buildTextButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
