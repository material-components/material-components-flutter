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
            message: 'Play',
            child: Icon(Icons.play_arrow),
          ),
        ),
      ),
    );
  }
}
