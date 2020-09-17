import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RangeValues _rangeSliderDiscreteValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: RangeSlider(
                values: _rangeSliderDiscreteValues,
                min: 0,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  _rangeSliderDiscreteValues.start.round().toString(),
                  _rangeSliderDiscreteValues.end.round().toString(),
                ),
                onChanged: (values) {
                  setState(() {
                    _rangeSliderDiscreteValues = values;
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
