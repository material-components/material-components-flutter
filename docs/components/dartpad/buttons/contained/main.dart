import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.light()),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text('CONTAINED BUTTON'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.add, size: 18),
              label: Text("CONTAINED BUTTON"),
            ),
          ],
        ),
      ),
    );
  }
}
