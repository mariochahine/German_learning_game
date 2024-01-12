
import 'package:flutter/material.dart';
import 'package:german_learning_game/resources/LeaderBoard.dart';

class finalscreen extends StatefulWidget {
  const finalscreen({super.key});

  @override
  State<finalscreen> createState() => _finalscreenState();
}

class _finalscreenState extends State<finalscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Results")),
    );
  }
}
