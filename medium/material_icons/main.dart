import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Icon Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.wash_rounded,
                  color: Colors.pink,
                  size: 48.0,
                  semanticLabel: 'Wash your hands',
                ),
                Icon(
                  Icons.wash_sharp,
                  color: Colors.green,
                  size: 48.0,
                  semanticLabel: 'Wash your hands',
                ),
                Icon(
                  Icons.wash_outlined,
                  color: Colors.black,
                  size: 48.0,
                  semanticLabel: 'Wash your hands',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.chat_rounded,
                  color: Colors.blue,
                  size: 48.0,
                  semanticLabel: 'Compose a message',
                ),
                Icon(
                  Icons.chat_sharp,
                  color: Colors.green,
                  size: 48.0,
                  semanticLabel: 'Compose a message',
                ),
                Icon(
                  Icons.chat_outlined,
                  color: Colors.purple,
                  size: 48.0,
                  semanticLabel: 'Compose a message',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.green,
                  size: 48.0,
                  semanticLabel: 'View my shopping cart',
                ),
                Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.orange,
                  size: 48.0,
                  semanticLabel: 'View my shopping cart',
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.purple,
                  size: 48.0,
                  semanticLabel: 'View my shopping cart',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
