import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _sliderDiscreteValue = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Slider(
                value: _sliderDiscreteValue,
                min: 0,
                max: 100,
                divisions: 5,
                label: _sliderDiscreteValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _sliderDiscreteValue = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
