import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/painting.dart';
import 'package:tunes_player_app1/tune_model.dart';

class HomepageRow extends StatelessWidget {
  const HomepageRow({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(onTap: () {
        tune.palysound();},
        child:
        Container(
          decoration: BoxDecoration(color: tune.color),
        )
      ),
    );
  }
}
