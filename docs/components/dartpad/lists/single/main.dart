import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF6200EE),
      ),
      home: ListDemo(),
    );
  }
}

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Single-line list'),
      ),
      body: ListView(
        children: [
          for (int count in List.generate(9, (index) => index + 1))
            ListTile(
              title: Text('List item $count'),
              leading: Icon(Icons.label),
              trailing: Text("0$count"),
            ),
        ],
      ),
    );
  }
}
