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

class ListDemo extends StatefulWidget {
  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Two-line list'),
      ),
      body: ListView(
        children: [
          for (int count in List.generate(9, (index) => index + 1))
            ListTile(
              title: Text('List item $count'),
              subtitle: Text('Secondary text'),
              leading: Icon(Icons.label),
              selected: count == groupValue,
              trailing: Radio(
                value: count,
                groupValue: groupValue,
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}
