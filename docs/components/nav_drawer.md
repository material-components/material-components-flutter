<!--docs:
title: "Material <component>"
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

**Note to developers: review the TOC contents to ensure that all rel links apply to your platform dev doc**

* [Using a navigation drawer](#using-a-navigation-drawer)
* [Making navigation drawers accessible](#making-navigation-drawers-accessible)
* [Anatomy](#anatomy)
* [Types](#types)
* [Standard navigation drawer](#standard-navigation-drawer)
* [Modal navigation drawer](#modal-navigation-drawer)
* [Bottom navigation drawer](#bottom-navigation-drawer)
* [Theming a navigation drawer](#theming-a-navigation-drawer)

## Using a navigation drawer

A navigation drawer provides access to destinations and app functionality, such as switching accounts. It can either be permanently on-screen or controlled by a navigation menu icon.

A navigation drawer is recommended for:

* Apps with five or more top-level destinations
* Apps with two or more levels of navigation hierarchy
* Quick navigation between unrelated destinations

Before you can use a Material navigation rail, you need to import the Material Components package for Flutter: `package:flutter/material.dart`.

You need to use a `MaterialApp`.

To create a modal drawer in Flutter, create a `Drawer` and set it to the `Scaffold`'s `drawer` property.

The `child` of the drawer can be a `ListView` or a `Container` wrapping a `ListView`. The children of the `ListView` can consist of a `DrawerHeader` and `ListTile`s.

There is no explicit bottom drawer in Flutter.

To create a bottom drawer in Flutter, `showModalBottomSheet` can be used with a menu icon within a `BottomAppBar` in the `bottomNavigationBar` slot in the `Scaffold`.

There is no explicit standard drawer in Flutter.

To create a standard drawer in Flutter, create a `Row` with 2 children: a `Container` and a `Scaffold`, with the `Container` acting as the drawer.

### Making navigation drawers accessible

Flutter's drawer component APIs support labeling for accessibility via the `semanticLabel` property. The content within `child` can have additional accessibility labeling.

For more guidance on writing labels, go to our page on how to write a good accessibility label.

## Anatomy

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
**Overlay window** |

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

### Standard navigation drawer example

Standard navigation drawers allow interaction with both screen content and the drawer at the same time. They can be used on tablet and desktop, but they aren’t suitable for mobile due to limited screen size.

_**NOTE: There is no explicit standard drawer in Flutter but it can be built using a `Row` that contains a `Container` and a `Scaffold`, with the `Container` acting as a drawer.**_

## Modal navigation drawer

`Drawer`
* [Class definition](https://api.flutter.dev/flutter/material/Drawer-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/drawer.dart)
* [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/nav_drawer/modal&gh_ref=develop)

[Modal navigation drawers](https://material.io/components/navigation-drawer#modal-drawer) block interaction with the rest of an app’s content with a scrim. They are elevated above most of the app’s UI and don’t affect the screen’s layout grid.

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
    final textTheme = Theme.of(context).textTheme;

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
```

## Bottom navigation drawer

Bottom navigation drawers are modal drawers that are anchored to the bottom of the screen instead of the left or right edge. They are only used with bottom app bars.

_**NOTE: There is no explicit bottom drawer in Flutter but it can be created by calling `showModalBottomSheet` from a menu icon within a `BottomAppBar` in the `bottomNavigationBar` slot in the `Scaffold`.**_

## Theming a navigation drawer

Theming for a navigation drawer can be done by theming the widgets that are inside the `Drawer`.

In the [Modal navigation drawer](#modal-navigation-drawer) above, the colors of the active destinations are based off the `ThemeData.primaryColor`.
