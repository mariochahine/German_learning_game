import 'package:flutter/material.dart';
import 'package:german_learning_game/resources/Difficulty.dart';
import 'LoadingScreen.dart';
import 'dart:async';

class LearnGerman extends StatefulWidget {
  const LearnGerman({super.key});

  @override
  State<LearnGerman> createState() => _LearnGermanState();
}

class _LearnGermanState extends State<LearnGerman> {
  TextEditingController username = TextEditingController();
  String usrnm="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Are You Ready To Learn German?',
              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 80,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                child: Column(
                children: [
                  SizedBox(height: 50),
                  Text("Please Enter Your Name:", style: TextStyle(fontSize: 21)),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(35),
                      child: TextField(
                        controller: username,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Player Name',
                        ),
                      ),
                    ),
                  ]),

                  const SizedBox(height: 20),
                  Text("How well do you think you speak german?",
                      style: TextStyle(fontSize: 17)),
                  SizedBox(height: 10),

                  DropdownMenu(
                    width: 210,
                    dropdownMenuEntries:
                        diff.map<DropdownMenuEntry<dif>>((dif diffic) {
                      return DropdownMenuEntry(
                        value: diffic,
                        label: diffic.toString(),
                      );
                    }).toList(),
                    initialSelection: diff[0],
                  ),
                  SizedBox(height: 25),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        usrnm = username.text;
                        if (usrnm.isNotEmpty) {
                          Timer(
                            Duration(seconds: 1),
                                () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => LoadingScreen(),
                              ),
                            ),
                          );
                        } else {
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    child: Container(
                      width: 100,
                      height: 30,
                      alignment: Alignment.center,
                      child: Text('Start'),
                    ),
                  ),

                  SizedBox(height: 15),
                ],
            ))
          ],
        ));

  }

}
class user{
  static String User = _LearnGermanState().usrnm;

  @override
  String toString(){
    return "$User";
  }
}



