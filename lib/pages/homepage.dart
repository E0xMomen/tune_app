import 'package:flutter/material.dart';
import 'package:tune_app/Widgets/items.dart';
import 'package:tune_app/models/tune_models.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<TuneModel> tunes = [
    TuneModel(color: const Color(0xffEE2B3A), tune: "note1.wav"),
    TuneModel(color: const Color(0xffF39330), tune: "note2.wav"),
    TuneModel(color: const Color(0xffFBF35C), tune: "note3.wav"),
    TuneModel(color: const Color(0xff3CC159), tune: "note4.wav"),
    TuneModel(color: const Color(0xff0CA586), tune: "note5.wav"),
    TuneModel(color: const Color(0xff0CA0E7), tune: "note6.wav"),
    TuneModel(color: const Color(0xff9810A7), tune: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        centerTitle: true,
        backgroundColor: const Color(0xFF243138),
        title: const Text(
          "Flutter Tune",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }

  List<TuneItem> getitemtunes() {
    List<TuneItem> items = [];
    for (var element in tunes) {
      items.add(TuneItem(tune: element));
    }
    return items;
  }
}
