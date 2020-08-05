import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filter Chips Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Filter Chips Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              FilterChip(
                avatar: Icon(Icons.check),
                label: Text('Filter 1'),
                selected: true,
                onSelected: (bool value) {},
              ),
              FilterChip(
                label: Text('Filter 2'),
                onSelected: (bool value) {},
              ),
              FilterChip(
                avatar: Icon(Icons.check),
                label: Text('Filter 3'),
                selected: true,
                onSelected: (bool value) {},
              ),
              FilterChip(
                label: Text('Filter 4'),
                onSelected: (bool value) {},
              ),
              FilterChip(
                label: Text('Filter 5'),
                onSelected: (bool value) {},
              ),
              FilterChip(
                label: Text('Filter 6'),
                onSelected: (bool value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
