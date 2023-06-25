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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                child: Expanded(
                  flex: 1,
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    height: 40.0,
                    // width: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
