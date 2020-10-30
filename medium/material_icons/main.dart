import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Icon Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Icon(
          Icons.masks_rounded,
          color: Colors.pink,
          size: 24.0,
          semanticLabel: 'Wear a mask',
        ),
        Icon(
          Icons.wash_rounded,
          color: Colors.green,
          size: 30.0,
          semanticLabel: 'Wash your hands',
        ),
        Icon(
          Icons.six_ft_apart_rounded,
          color: Colors.blue,
          size: 36.0,
          semanticLabel: 'Socially distance',
        ),
      ],
    );
  }
}
