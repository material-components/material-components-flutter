import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choice Chips Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Choice Chips Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              ChoiceChip(
                label: Text('Choice 1'),
                selected: true,
              ),
              ChoiceChip(
                label: Text('Choice 2'),
                selected: false,
              ),
              ChoiceChip(
                label: Text('Choice 3'),
                selected: false,
              ),
              ChoiceChip(
                label: Text('Choice 4'),
                selected: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
