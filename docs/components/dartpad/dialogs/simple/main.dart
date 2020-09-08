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
    final SimpleDialog dialog = SimpleDialog(
      title: Text('Set backup account'),
      children: [
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.orange,
          text: 'user01@gmail.com',
          onPressed: () {
            Navigator.pop(context, 'user01@gmail.com');
          },
        ),
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.green,
          text: 'user02@gmail.com',
          onPressed: () {
            Navigator.pop(context, 'user02@gmail.com');
          },
        ),
        SimpleDialogItem(
          icon: Icons.add_circle,
          color: Colors.grey,
          text: 'Add account',
          onPressed: () {
            Navigator.pop(context, 'Add account');
          },
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

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem(
      {Key key, this.icon, this.color, this.text, this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
