import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linear Progress Indicator Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Linear Progress Indicator Demo'),
        ),
        body: Center(
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }
}
