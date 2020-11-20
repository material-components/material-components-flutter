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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text("TEXT BUTTON"),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.add, size: 18),
              label: Text("TEXT BUTTON"),
            ),
          ],
        ),
      ),
    );
  }
}
