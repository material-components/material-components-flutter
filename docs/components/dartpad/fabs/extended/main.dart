import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.add),
          label: Text('EXTENDED'),
        ),
      ),
    );
  }
}
