import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          for (int i = 1; i <= 5; i++)
            ListTile(
              title: Text(
                'Radio $i',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: i == 5 ? Colors.black38 : Colors.black),
              ),
              leading: Radio(
                value: i,
                groupValue: _value,
                activeColor: const Color(0xFF6200EE),
                onChanged: i == 5
                    ? null
                    : (int? value) {
                        setState(() {
                          _value = value;
                        });
                      },
              ),
            ),
        ],
      ),
    );
  }
}
