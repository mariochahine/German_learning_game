import 'package:flutter/material.dart';
import 'package:german_learning_game/resources/LeaderBoard.dart';
import 'package:german_learning_game/resources/WnP.dart';
import 'dart:async';
import 'round7.dart';

class round6 extends StatefulWidget {
  const round6({super.key});

  @override
  State<round6> createState() => _round6State();
}

class _round6State extends State<round6> {
  int i = getindex().geti();
  TextEditingController answer6 = TextEditingController();
  String corr='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF5BD46),
        appBar: AppBar(
          title: const Text('Round 6', style: TextStyle(fontSize: 27)),
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 60,
        ),
        body: Center(

          child: Column(children: [
            SizedBox(height: 30),
            Image.asset("images/midimage.png",height: 150),
            SizedBox(height: 30),
            Text('Can you Guess the First Word?',
                style: TextStyle(fontSize: 23)),

            SizedBox(height: 15),
            SizedBox(
                height: 2,
                width: 350,
                child: Scaffold(backgroundColor: Colors.red)),
            SizedBox(height: 15),

            Text(wd[i].getgermanwd(),
                style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            SizedBox(
                height: 2,
                width: 350,
                child: Scaffold(backgroundColor: Colors.red)),

            Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  controller: answer6,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'What is it in german?',
                  ),
                ),
              ),
            ]),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  corr = answer6.text;
                  if(corr.isNotEmpty){
                    if (corr.toLowerCase() == wd[i].getenglishwd().toLowerCase()) {
                      addScore().icremscore();
                    }
                    Timer(
                      Duration(seconds: 1),
                          () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => round7(),
                        ),
                      ),
                    );
                  }
                  else {
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle: TextStyle(fontSize: 20),
              ),
              child: Container(
                width: 100,
                height: 45,
                alignment: Alignment.center,
                child: Text('Submit'),
              ),
            ),
            SizedBox(height: 20),
            Text('Your Score is:',
                style: TextStyle(fontSize: 18)),
            Text(addScore().getscore().toString()+'/15',
                style: TextStyle(fontSize: 18)),

          ]),
        ));;
  }
}
