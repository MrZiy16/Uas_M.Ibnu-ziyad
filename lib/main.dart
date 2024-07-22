import 'package:flutter/material.dart';
import 'package:myapp/audiomp3.dart';
import 'package:myapp/videocamera.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Uas M.Ibnu Ziyad"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.audio_file),
                  text: "Audio mp3",
                ),
                Tab(
                  icon: Icon(Icons.camera),
                  text: "Video Camera",
                ),
              ],
              indicatorColor: Colors.amber,
            ),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: TabBarView(
              children: [
                Musik(),
                VideoCamera(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
