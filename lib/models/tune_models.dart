import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color color;
  final String tune;
  TuneModel({required this.color, required this.tune});
  void playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(tune));
  }
}
