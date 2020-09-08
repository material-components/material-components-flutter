import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkboxes Demo',
      debugShowCheckedModeBanner: false,
      home: CheckboxesDemo(),
    );
  }
}

class CheckboxesDemo extends StatefulWidget {
  @override
  _CheckboxesDemoState createState() => _CheckboxesDemoState();
}

class _CheckboxesDemoState extends State<CheckboxesDemo> {
  List<bool> checked = [true, true, false, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkboxes Demo'),
        backgroundColor: Color(0xFF6200EE),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            for (var i = 0; i < 5; i += 1)
              Row(
                children: [
                  Checkbox(
                    onChanged: i == 4
                        ? null
                        : (bool value) {
                            setState(() {
                              checked[i] = value;
                            });
                          },
                    tristate: i == 1,
                    value: checked[i],
                    activeColor: Color(0xFF6200EE),
                  ),
                  Text(
                    'Checkbox ${i + 1}',
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: i == 4 ? Colors.black38 : Colors.black),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
          ],
        ),
      ),
    );
  }
}
