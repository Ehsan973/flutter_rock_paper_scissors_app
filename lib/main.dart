import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          title: Text('سنگ   کاغذ    قیچی'),
        ),
        backgroundColor: Colors.deepOrange[600],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('images/2.png')),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Image(image: AssetImage('images/3.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
