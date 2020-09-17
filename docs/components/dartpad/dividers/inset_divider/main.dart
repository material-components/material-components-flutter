import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InsetDividerDemonstration(),
      ),
    );
  }
}

class InsetDividerDemonstration extends StatelessWidget {
  InsetDividerDemonstration({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('A1'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('A2'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('A3'),
            ),
          ),
        ),
        const Divider(indent: 16),
        Container(
          padding: EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Subheader',
              style: Theme.of(context).textTheme.bodyText2.copyWith(
                  fontSize: 12.0,
                  color: Theme.of(context).textTheme.caption.color),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('B1'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('B2'),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Center(
              child: Text('B3'),
            ),
          ),
        ),
      ],
    );
  }
}
