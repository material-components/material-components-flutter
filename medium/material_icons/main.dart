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
    const maskSemanticLabel = 'Wear a mask';

    const rowColor1 = Color.fromRGBO(51, 102, 255, 1);
    const rowColor2 = Color.fromRGBO(102, 102, 255, 1);
    const rowColor3 = Color.fromRGBO(153, 102, 255, 1);
    const rowColor4 = Color.fromRGBO(204, 51, 255, 1);

    const iconSize = 60.0;

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
                  Icons.shopping_cart,
                  color: rowColor1,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: rowColor1,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
                Icon(
                  Icons.shopping_cart_rounded,
                  color: rowColor1,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
                Icon(
                  Icons.shopping_cart_sharp,
                  color: rowColor1,
                  size: iconSize,
                  semanticLabel: shoppingCartSemanticLabel,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.chat,
                  color: rowColor2,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
                Icon(
                  Icons.chat_outlined,
                  color: rowColor2,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
                Icon(
                  Icons.chat_rounded,
                  color: rowColor2,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
                Icon(
                  Icons.chat_sharp,
                  color: rowColor2,
                  size: iconSize,
                  semanticLabel: chatSemanticLabel,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.masks,
                  color: rowColor3,
                  size: iconSize,
                  semanticLabel: maskSemanticLabel,
                ),
                Icon(
                  Icons.masks_outlined,
                  color: rowColor3,
                  size: iconSize,
                  semanticLabel: maskSemanticLabel,
                ),
                Icon(
                  Icons.masks_rounded,
                  color: rowColor3,
                  size: iconSize,
                  semanticLabel: maskSemanticLabel,
                ),
                Icon(
                  Icons.masks_sharp,
                  color: rowColor3,
                  size: iconSize,
                  semanticLabel: maskSemanticLabel,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.wash,
                  color: rowColor4,
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
                Icon(
                  Icons.wash_outlined,
                  color: rowColor4,
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
                Icon(
                  Icons.wash_rounded,
                  color: rowColor4,
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
                Icon(
                  Icons.wash_sharp,
                  color: rowColor4,
                  size: iconSize,
                  semanticLabel: washSemanticLabel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
