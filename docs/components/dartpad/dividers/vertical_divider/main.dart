import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: const Center(
                child: Text('Start'),
              ),
            ),
          ),
          const VerticalDivider(),
          Expanded(
            child: Container(
              child: const Center(
                child: Text('End'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
