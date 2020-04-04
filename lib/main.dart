import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Musical App",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Widget buildKey(Color col,int number){
    return Expanded(
            child: FlatButton(
              color: col,
              onPressed: () {
                final player = AudioCache();
                player.play('note$number.wav');
              },
              child: null,
            ),
          );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Musical App",
          style: TextStyle(
            fontSize: 30.0,
            color: Color(0xff263238),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildKey(Color(0xffFFCC80),1),
          buildKey(Color(0xff00E5FF),2),
          buildKey(Color(0xff1DE9B6),3),
          buildKey(Color(0xffFDD835),4),
          buildKey(Color(0xffBA68C8),5),
          buildKey(Color(0xffFF7043),6),
          buildKey(Color(0xff8D6E63),7),
        ],
      ),
    );
  }
}
