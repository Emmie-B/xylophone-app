import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:test_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  // var _word = nouns.first;
  void PlaySound(int Soundnumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/note$Soundnumber.wav'));
  }

  Expanded buildkey(Color color, int soundNumber) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          // elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          PlaySound(soundNumber);
        },
        child: const Text(
          '',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildkey(Colors.red, 1),
            buildkey(Colors.blue, 2),
            buildkey(Colors.yellow, 3),
            buildkey(Colors.pink, 4),
            buildkey(Colors.orange, 5),
            buildkey(Colors.teal, 6),
            buildkey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
