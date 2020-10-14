<!--docs:
title: "Material Navigation Drawer"
layout: detail
section: components
excerpt: "Navigation drawers provide access to destinations in your app."
iconId:
path: /catalog/NavigationDrawers/
-->

# Navigation drawer

A [navigation drawer](https://material.io/components/navigation-drawer) provides access to destinations in your app.

![Hero navigation drawer image](assets/nav_drawer/NavDrawer-hero.png)

## Contents

- [Using a navigation drawer](#using-a-navigation-drawer)
- [Anatomy](#anatomy)
- [Standard navigation drawer](#standard-navigation-drawer)
- [Modal navigation drawer](#modal-navigation-drawer)
- [Bottom navigation drawer](#bottom-navigation-drawer)
- [Theming a navigation drawer](#theming-a-navigation-drawer)

## Using a navigation drawer

A navigation drawer provides access to destinations and app functionality, such as switching accounts. It can either be permanently on-screen or controlled by a navigation menu icon.

A navigation drawer is recommended for:

- Apps with five or more top-level destinations
- Apps with two or more levels of navigation hierarchy
- Quick navigation between unrelated destinations

Before you can use a Material navigation rail, you need to import the Material Components package for Flutter: `package:flutter/material.dart`.

You need to use a `MaterialApp`.

To create a modal drawer in Flutter, create a `Drawer` and set it to the `Scaffold`'s `drawer` property.

The `child` of the drawer can be a `ListView` or a `Container` wrapping a `ListView`. The children of the `ListView` can consist of a `DrawerHeader` and `ListTile`s.

There are no explicit bottom or standard drawers in Flutter. See the [Types]((#types) section for instructions to generate these drawer types specified in the [Material navigation drawer spec](https://material.io/components/navigation-drawer)

### Making navigation drawers accessible

Flutter's drawer component APIs support labeling for accessibility via the `semanticLabel` property. The content within `child` can have additional accessibility labeling.

For more guidance on writing labels, go to our page on how to write a good accessibility label.

## Anatomy

The following is a navigation drawer anatomy diagram:

![Navigation drawer anatomy](assets/nav_drawer/NavDrawer-anatomy.png)

1. Container
2. Header (optional)
3. Divider (optional)
4. Active text overlay
5. Active text
6. Inactive text
7. Subtitle
8. Scrim (modal only)

### Container attributes

&nbsp; | Property
------ | ---------
**Color** | `color` on the `child` of the `Drawer` when using a `Container`
**Height** | `height` on the `child` of the `Drawer` when using a `Container`

### Header attributes

&nbsp;         | Property
-------------- | ------------------------
**Text label** | `Text` value on `child` of the `DrawerHeader` when using a `Text`
**Color**      | `style` on `child` of the `DrawerHeader` when using a `Text`
**Typography** | `style` on `child` of the `DrawerHeader` when using a `Text`

### Divider attributes

&nbsp;         | Property
-------------- | ------------------------
**Color** | Within the `Divider` widget use the `color` parameter
**Height** | Within the `Divider` widget use the `height` parameter
**Indent** | Within the `Divider` widget use the `indent` parameter
**End Indent** | Within the `Divider` widget use the `endIndent` parameter
**Thickness** | Within the `Divider` widget use the `thickness` parameter

### Active text overlay attributes

&nbsp;         | Property
-------------- | ------------------------
**Color** | Within the `ListTile` widget use the `selectedTileColor` parameter


### Active text attributes

&nbsp;         | Property
-------------- | ------------------------
**Text label** | `style` on `title` of the `ListTile` when using a `Text` when the `selected` parameter of the `ListTile` is true
**Color**      | `style` on `title` of the `ListTile` when using a `Text` when the `selected` parameter of the `ListTile` is true
**Typography** | `style` on `title` of the `ListTile` when using a `Text` when the `selected` parameter of the `ListTile` is true

### Inactive text attributes

&nbsp;         | Property
-------------- | ------------------------
**Text label** | `style` on `title` of the `ListTile` when using a `Text` when the `selected` parameter of the `ListTile` is false
**Color**      | `style` on `title` of the `ListTile` when using a `Text` when the `selected` parameter of the `ListTile` is false
**Typography** | `style` on `title` of the `ListTile` when using a `Text` when the `selected` parameter of the `ListTile` is false

### Subtitle attributes

&nbsp;         | Property
-------------- | ------------------------
**Text label** | `style` on `subtitle` of the `ListTile` when using a `Text`
**Color**      | `style` on `subtitle` of the `ListTile` when using a `Text`
**Typography** | `style` on `subtitle` of the `ListTile` when using a `Text`

### Scrim attributes

&nbsp;         | Property
-------------- | ------------------------
**Color**      | Within the `Scaffold` widget use the `drawerScrimColor` parameter


## Types

There are three types of navigation drawer, which include 1. [standard](#standard-navigation-drawers) 2. [modal](#modal-navigation-drawers) 3. [bottom](#bottom-navigation-drawers)

![Standard, modal, and bottom navigation drawer examples](assets/nav_drawer/Navigation-drawer_composite.png)

## Standard navigation drawer

[Standard navigation drawers](https://material.io/components/navigation-drawer#standard-drawer) allow interaction with both screen content and the drawer at the same time. They can be used on tablet and desktop, but they aren’t suitable for mobile due to limited screen size.

`Drawer`
- [Class definition](https://api.flutter.dev/flutter/material/Drawer-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/drawer.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/nav_drawer/standard&gh_ref=develop)

### Standard navigation drawer example

_**NOTE: There is no explicit standard drawer in Flutter but it can be built using a `Row` that contains a `Container` and a `Scaffold`, with the `Container` acting as a drawer.**_

```dart
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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      children: [
        Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
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
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Item 1'),
                selected: _selectedDestination == 0,
                onTap: () => selectDestination(0),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Item 2'),
                selected: _selectedDestination == 1,
                onTap: () => selectDestination(1),
              ),
              ListTile(
                leading: Icon(Icons.label),
                title: Text('Item 3'),
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
              ListTile(
                leading: Icon(Icons.bookmark),
                title: Text('Item A'),
                selected: _selectedDestination == 3,
                onTap: () => selectDestination(3),
              ),
            ],
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              childAspectRatio: 3 / 2,
              children: [
                Image.asset('assets/nav-drawer-1.jpg'),
                Image.asset('assets/nav-drawer-2.jpg'),
                Image.asset('assets/nav-drawer-3.jpg'),
                Image.asset('assets/nav-drawer-4.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
```

## Modal navigation drawer

[Modal navigation drawers](https://material.io/components/navigation-drawer#modal-drawer) block interaction with the rest of an app’s content with a scrim. They are elevated above most of the app’s UI and don’t affect the screen’s layout grid.

`Drawer`
- [Class definition](https://api.flutter.dev/flutter/material/Drawer-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/drawer.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/nav_drawer/modal&gh_ref=develop)

### Modal navigation drawer example

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
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
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Item 1'),
              selected: _selectedDestination == 0,
              onTap: () => selectDestination(0),
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text('Item 2'),
              selected: _selectedDestination == 1,
              onTap: () => selectDestination(1),
            ),
            ListTile(
              leading: Icon(Icons.label),
              title: Text('Item 3'),
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
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Item A'),
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
          Image.asset('assets/nav-drawer-1.jpg'),
          Image.asset('assets/nav-drawer-2.jpg'),
          Image.asset('assets/nav-drawer-3.jpg'),
          Image.asset('assets/nav-drawer-4.jpg'),
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
```

## Bottom navigation drawer

Bottom navigation drawers are modal drawers that are anchored to the bottom of the screen instead of the left or right edge. They are only used with bottom app bars.

### Bottom navigation drawer example

_**NOTE: There is no bottom drawer in Flutter, but it can be created by creating custom `Widget` composed of `ListTile`, `Divider`, and `Text` widgets. A `PositionedTransition` can be used to animate the visibility of the drawer. The opening and closing of the drawer should be triggered by the tap of a menu icon within a `BottomAppBar` in the `bottomNavigationBar` slot in the `Scaffold`.**_

```dart
  bottomNavigationBar: BottomAppBar(
    child: Row(
      children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Animate a bottom drawer
          },
        ),
        Spacer(),
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      ],
    ),
  ),
```

## Theming a navigation drawer

Theming for a navigation drawer can be done by theming the widgets that are inside the `Drawer`.

- The widget used for a drawer destination is commonly a `ListTile`, and can be themed with [`ListTileTheme`](https://api.flutter.dev/flutter/material/ListTileTheme-class.html).
- Other `Text`s and `Icon`s can be themed with [`TextTheme`](https://api.flutter.dev/flutter/material/TextTheme-class.html) and [`IconTheme`](https://api.flutter.dev/flutter/widgets/IconTheme-class.html).

In the [Modal navigation drawer](#modal-navigation-drawer) above, the colors of the active destinations are based off the `ThemeData.primaryColor`.
