import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FullBleedDemonstration(),
      ),
    );
  }
}

class FullBleedDemonstration extends StatelessWidget {
  FullBleedDemonstration({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 1'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 2'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 3'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 4'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 5'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 6'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: const Center(
                child: Text('Item 7'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
