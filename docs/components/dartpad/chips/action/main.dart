import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Action Chip Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Action Chips Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              ActionChip(
                avatar: Icon(Icons.favorite),
                label: Text('Action 1'),
                onPressed: () {},
              ),
              ActionChip(
                avatar: Icon(Icons.delete),
                label: Text('Action 2'),
                onPressed: () {},
              ),
              ActionChip(
                avatar: Icon(Icons.alarm),
                label: Text('Action 3'),
                onPressed: () {},
              ),
              ActionChip(
                avatar: Icon(Icons.location_on),
                label: Text('Action 4'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
