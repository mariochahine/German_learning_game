import 'package:flutter/material.dart';
import 'dart:async';
import 'Level 6.dart';

class Level5 extends StatefulWidget {
  const Level5({super.key});

  @override
  State<Level5> createState() => _Level5State();
}

class _Level5State extends State<Level5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFF5BD46),
        appBar: AppBar(
          title: const Text('Level 5', style: TextStyle(fontSize: 25)),
          centerTitle: true,
          backgroundColor: Colors.red,
          toolbarHeight: 60,
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text('Lets learn how to say:',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('Family', style: TextStyle(fontSize: 24)),

                  SizedBox(height: 50),
                  Image.asset("images/hallo.png", height: 150),

                  SizedBox(height: 20),
                  Text('"Mother"', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 20),
                  Text('“Mutter”',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),

                  SizedBox(
                      height: 2,
                      width: 350,
                      child: Scaffold(backgroundColor: Colors.red)),

                  SizedBox(height: 50),
                  Text('"Father"', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 20),
                  Text('“Vater”',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 50),

                  SizedBox(
                      height: 2,
                      width: 350,
                      child: Scaffold(backgroundColor: Colors.red)),

                  SizedBox(height: 20),
                  Image.asset("images/einszwei.png",height: 150),

                  SizedBox(height: 30),
                  Text('"Sister"', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 20),
                  Text('“Schwester”',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),

                  SizedBox(
                      height: 2,
                      width: 350,
                      child: Scaffold(backgroundColor: Colors.red)),

                  SizedBox(height: 50),
                  Text('"Brother"', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 20),
                  Text('“Bruder”',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  SizedBox(height: 50),

                  SizedBox(
                      height: 2,
                      width: 350,
                      child: Scaffold(backgroundColor: Colors.red)),

                  SizedBox(height: 20),
                  Image.asset("images/midimage.png",height: 150),

                  SizedBox(height: 30),
                  Text('"Family"', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 20),
                  Text('“Familie”',
                      style:
                      TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      Timer(
                          Duration(seconds: 1),
                              () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => Level6())));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text('Level 6'),
                    ),
                  ),
                  
                  SizedBox(height: 50),
                  Image.asset("images/footer.png",height: 150),
                  SizedBox(height: 20)
                ],
              ),
            ),
          ),
        ));
  }
}
