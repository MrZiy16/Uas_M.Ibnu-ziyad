import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Musik extends StatelessWidget {
  AudioPlayer? player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Play Musik",
              ),
              Image(image: AssetImage("assets/musik.jpg")),
              ElevatedButton(
                child: Text(
                  'Play',
                ),
                onPressed: () async {
                  player!.play(AssetSource(
                    'in-slow-motion-inspiring-ambient-lounge-219592.mp3'));
                },
              ),
              ElevatedButton(
                child: Text(
                  'Stop',
                ),
                onPressed: () async {
                  player!.stop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}