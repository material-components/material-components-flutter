import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: shrinePink100,
        buttonTheme: const ButtonThemeData(
          colorScheme: ColorScheme(
            primary: shrinePink100,
            primaryVariant: shrineBrown900,
            secondary: shrinePink50,
            secondaryVariant: shrineBrown900,
            surface: shrineSurfaceWhite,
            background: shrineBackgroundWhite,
            error: shrineErrorRed,
            onPrimary: shrineBrown900,
            onSecondary: shrineBrown900,
            onSurface: shrineBrown900,
            onBackground: shrineBrown900,
            onError: shrineSurfaceWhite,
            brightness: Brightness.light,
          ),
          textTheme: ButtonTextTheme.normal,
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  final isSelected = <bool>[false, false, false];
  var isSelectedIcon = false;

  var icon = Icons.favorite_border;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              onPressed: () {
                // Perform some action
              },
              child: const Text('FLAT BUTTON', semanticsLabel: 'FLAT BUTTON 1'),
            ),
            FlatButton.icon(
              icon: const Icon(Icons.ac_unit),
              onPressed: () {},
              label: const Text('ICON FLAT BUTTON'),
            ),
            OutlineButton(
              onPressed: () {},
              child: const Text('OUTLINE BUTTON'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('RAISED BUTTON'),
            ),
            ToggleButtons(
              isSelected: isSelected,
              onPressed: (index) {
                // Respond to button selection
                setState(() {
                  isSelected[index] = !isSelected[index];
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('TOGGLE BUTTON 1'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('TOGGLE BUTTON 2'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('TOGGLE BUTTON 3'),
                ),
              ],
            ),
            IconButton(
              icon: Icon(icon),
              onPressed: () {
                // Respond to icon toggle
                setState(() {
                  isSelectedIcon = !isSelectedIcon;
                  icon =
                      isSelectedIcon ? Icons.favorite : Icons.favorite_border;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;
