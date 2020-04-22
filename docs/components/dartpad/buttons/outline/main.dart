import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
            OutlineButton(
              textColor: Color(0xFF6200EE),
              highlightedBorderColor: Colors.black.withOpacity(0.12),
              highlightColor: Colors.transparent,
              onPressed: () {
                // Respond to button press
              },
              child: Text("OUTLINED BUTTON"),
            ),
            OutlineButton.icon(
              textColor: Color(0xFF6200EE),
              highlightedBorderColor: Colors.black.withOpacity(0.12),
              highlightColor: Colors.transparent,
              onPressed: () {
                // Respond to button press
              },
              icon: Icon(Icons.add, size: 18),
              label: Text("OUTLINED BUTTON"),
            ),
          ],
        ),
      ),
    );
  }
}
