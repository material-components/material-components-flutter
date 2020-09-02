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
    final AlertDialog dialog = AlertDialog(
      title: Text('Reset settings?'),
      content:
          Text('This will reset your device to its default factory settings.'),
      actions: [
        FlatButton(
          textColor: Color(0xFF6200EE),
          onPressed: () => Navigator.pop(context),
          child: Text('CANCEL'),
        ),
        FlatButton(
          textColor: Color(0xFF6200EE),
          onPressed: () => Navigator.pop(context),
          child: Text('ACCEPT'),
        ),
      ],
    );
    return Scaffold(
      body: Center(
        child: FlatButton(
          textColor: Color(0xFF6200EE),
          highlightColor: Colors.transparent,
          onPressed: () {
            showDialog<void>(context: context, builder: (context) => dialog);
          },
          child: Text("SHOW DIALOG"),
        ),
      ),
    );
  }
}
