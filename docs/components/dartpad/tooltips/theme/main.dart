import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tooltip Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Tooltip(
            message: 'play',
            decoration: ShapeDecoration(
              color: Color(0xFF232F34),
              shape: StadiumBorder(),
            ),
            textStyle: TextStyle(color: Colors.white),
            child: Icon(Icons.play_arrow),
          ),
        ),
      ),
    );
  }
}