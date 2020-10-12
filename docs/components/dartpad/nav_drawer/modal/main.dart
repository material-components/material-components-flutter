import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(
        primaryColor: Color(0xFF6200EE),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Header',
                style: textTheme.headline6,
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            _NavDrawerDestination(
              iconData: Icons.favorite,
              title: 'Item 1',
              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),
            ),
            _NavDrawerDestination(
              iconData: Icons.delete,
              title: 'Item 2',
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
            ),
            _NavDrawerDestination(
              iconData: Icons.label,
              title: 'Item 3',
              selected: _selectedDestination == 2,
              onTap: () => selectDestination(2),
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Label',
              ),
            ),
            _NavDrawerDestination(
              iconData: Icons.bookmark,
              title: 'Item A',
              selected: _selectedDestination == 3,
              onTap: () => selectDestination(3),
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        childAspectRatio: 3 / 2,
        children: [
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.pinkAccent),
          Container(color: Colors.purpleAccent),
        ],
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}

class _NavDrawerDestination extends StatelessWidget {
  _NavDrawerDestination({
    this.iconData,
    this.title,
    this.selected,
    this.onTap,
  });

  final IconData iconData;
  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final primaryColor = theme.primaryColor;

    return ListTile(
      leading: Icon(
        iconData,
        color: selected ? primaryColor : null,
      ),
      title: Text(
        title,
        style: textTheme.subtitle2.copyWith(
          color: selected ? primaryColor : null,
        ),
      ),
      selectedTileColor: primaryColor.withOpacity(0.12),
      selected: selected,
      onTap: onTap,
    );
  }
}
