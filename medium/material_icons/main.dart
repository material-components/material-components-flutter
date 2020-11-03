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
    const washSemanticLabel = 'Wash your hands';
    const chatSemanticLabel = 'Compose a message';
    const shoppingCartSemanticLabel = 'View my shopping cart';

    const iconSize = 48.0;

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
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
                Icon(
                  Icons.wash_sharp,
                  color: Colors.green,
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
                Icon(
                  Icons.wash_outlined,
                  color: Colors.black,
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.chat_rounded,
                  color: Colors.blue,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
                Icon(
                  Icons.chat_sharp,
                  color: Colors.green,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
                Icon(
                  Icons.chat_outlined,
                  color: Colors.purple,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.green,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
                Icon(
                  Icons.shopping_cart_sharp,
                  color: Colors.orange,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.purple,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
