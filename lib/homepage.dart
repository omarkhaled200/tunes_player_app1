import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tunes_player_app1/homepage_row.dart';
import 'package:tunes_player_app1/tune_model.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffFF3F3A), sound: "note1.wav"),
    TuneModel(color: Color(0xffFE972C), sound: "note2.wav"),
    TuneModel(sound: "note3.wav", color: Color(0xffFEEB58)),
    TuneModel(sound: "note4.wav", color: Color(0xff34AE58)),
    TuneModel(sound: "note5.wav", color: Color(0xff019589)),
    TuneModel(sound: "note6.wav", color: Color(0xff0096EE)),
    TuneModel(sound: "note7.wav", color: Color(0xffA326AD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Tune',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xff252F39),
          centerTitle: true,
        ),
        body: Column(
          children: 
            tunes
                .map(
                  (e) => HomepageRow(tune: e),
                )
                .toList(),
        ));
  }
}
