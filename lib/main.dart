import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({super.key});

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottom = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text('سنگ    کاغذ    قیچی'),
        ),
        backgroundColor: Colors.deepOrange[600],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('images/$top.png')),
                TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 40)),
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3) + 1;
                      bottom = Random().nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Image(image: AssetImage('images/$bottom.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
