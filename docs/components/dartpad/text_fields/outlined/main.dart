import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextFormField(
        initialValue: 'Input text',
        decoration: InputDecoration(
          labelText: 'Label text',
          errorText: 'Error message',
          border: OutlineInputBorder(),
          suffixIcon: Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
