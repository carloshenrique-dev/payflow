import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.cyanAccent,
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
