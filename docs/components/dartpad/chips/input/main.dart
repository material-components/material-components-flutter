import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Chips Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Chips Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              InputChip(
                avatar: Icon(Icons.remove),
                label: Text('Input 1'),
                onSelected: (bool value) {},
              ),
              InputChip(
                avatar: Icon(Icons.remove),
                label: Text('Input 2'),
                onSelected: (bool value) {},
              ),
              InputChip(
                avatar: Icon(Icons.remove),
                label: Text('Input 3'),
                onSelected: (bool value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
