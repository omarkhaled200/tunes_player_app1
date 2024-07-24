import 'package:flutter/material.dart';
import 'package:tunes_player_app1/homepage.dart';

void main() {
  runApp(MyTune());
}
class MyTune extends StatelessWidget {
  const MyTune({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage()
    );
  }
}
