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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          textColor: Color(0xFF6200EE),
          highlightColor: Colors.transparent,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => FullScreenDialog(),
                  fullscreenDialog: true,
                ));
          },
          child: Text("SHOW DIALOG"),
        ),
      ),
    );
  }
}

class FullScreenDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF6200EE),
          title: Text('Full-screen Dialog')),
      body: Center(
        child: Text("Full-screen dialog"),
      ),
    );
  }
}
