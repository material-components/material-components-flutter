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
  Map<int, bool> countToValue = <int, bool>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Three-line list'),
      ),
      body: ListView(
        children: [
          for (int count in List.generate(9, (index) => index + 1))
            ListTile(
              title: Text('List item $count'),
              isThreeLine: true,
              subtitle: Text('Secondary text\nTertiary text'),
              leading: Icon(Icons.label),
              trailing: Checkbox(
                value: countToValue[count] ?? false,
                onChanged: (bool value) {
                  setState(() {
                    countToValue[count] = value;
                  });
                },
              ),
            ),
        ],
      ),
    );
  }
}
