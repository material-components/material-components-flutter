import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exposed Menu Demo',
      debugShowCheckedModeBanner: false,
      home: ExposedDropdownMenuDemo(),
    );
  }
}

class ExposedDropdownMenuDemo extends StatefulWidget {
  @override
  _ExposedDropdownMenuDemoState createState() =>
      _ExposedDropdownMenuDemoState();
}

class _ExposedDropdownMenuDemoState extends State<ExposedDropdownMenuDemo> {
  String dropdownValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exposed Menu Demo'),
      ),
      body: Center(
        child: DropdownButton(
          value: dropdownValue,
          items: <DropdownMenuItem>[
            DropdownMenuItem(
              value: 'Option 1',
              child: Text('Option 1'),
            ),
            DropdownMenuItem(
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            DropdownMenuItem(
              value: 'Option 3',
              child: Text('Option 3'),
            ),
            DropdownMenuItem(
              value: 'Option 4',
              child: Text('Option 4'),
            ),
            DropdownMenuItem(
              value: 'Option 5',
              child: Text('Option 5'),
            ),
            DropdownMenuItem(
              value: 'Option 6',
              child: Text('Option 6'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              dropdownValue = value;
            });
          },
        ),
      ),
    );
  }
}
