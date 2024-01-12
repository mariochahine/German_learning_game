import 'package:flutter/material.dart';
import 'dart:async';
import 'Game.dart';
import 'package:german_learning_game/MainMenu.dart';

class StartMenu extends StatefulWidget {
  const StartMenu({super.key});

  @override
  State<StartMenu> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  String Name = user().toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5BD46),
        appBar: AppBar(
          title: Text('Hello, $Name', style: TextStyle(fontSize: 27)),
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 70,
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Column(children: [
                SizedBox(height: 100),
                Text('Hopefully you Trained Well...',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Its Game Time!!', style: TextStyle(fontSize: 23)),

                SizedBox(height: 50),

                Text('Are you ready', style: TextStyle(fontSize: 24)),
                SizedBox(height: 5),
                Text(' to test your Knowledge?', style: TextStyle(fontSize: 24)),

                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Timer(
                        Duration(seconds: 3),
                            () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => Game())));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Container(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text('Start'),
                  ),
                ),

          ]))
        ]));
  }
}
