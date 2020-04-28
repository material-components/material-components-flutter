<!--docs:
title: "Material bottom app bar"
layout: detail
section: components
excerpt: "Bottom app bars provide access to a bottom navigation drawer and up to four actions, including the floating action button.
iconId:
path: /catalog/material-bottom-app-bar/
-->

# Bottom app bars

[Bottom app bars](https://material.io/components/app-bars-bottom/) provide access to a bottom navigation drawer and up to four actions, including the floating action button.

![Example bottom app bar with inset floating action button](assets/bottom_app_bars/bottom-app-bar-hero.png)

## Using the bottom app bar

**Note to developers: please add a link to your platform's FAB article below**

Bottom app bars provide access to a bottom navigation drawer and up to four actions, including the [floating action button](link to floating action button here).

Before you can use Material buttons, you need to import the Material Components package for Flutter:
```
package:flutter/material.dart
```

You need to use [`MaterialApp`](https://api.flutter.dev/flutter/material/MaterialApp-class.html).

For more information on getting started with the Material for Flutter, go to the Flutter [Material library](https://api.flutter.dev/flutter/material/material-library.html) page.


For more guidance using the bottom app bar, go to the [Material design page](https://material.io/components/app-bars-bottom/).

## Bottom app bar example

`BottomAppBar`
* [Class description](https://api.flutter.dev/flutter/material/BottomAppBar-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/bottom_app_bar.dart)
* [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/bottom_app_bars/regular)

![Bottom app bar with with leading navigation drawer icon, overlapping FAB with '+' icon, and trailing 'search' and overflow menu control](assets/bottom_app_bars/bottom_app_bar_example.png)

```dart
Scaffold(
  bottomNavigationBar: BottomAppBar(
    child: Row(
      children: [
        IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        Spacer(),
        IconButton(icon: Icon(Icons.search), onPressed: () {}),
        IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
      ],
    ),
  ),
  floatingActionButton:
      FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
),
```

## Anatomy and key properties

![Bottom app bar anatomy diagram](assets/bottom_app_bars/bottom-app-bar-anatomy.png)


1. Container
1. Navigation drawer icon
1. Floating action button (FAB)
1. Action icon
1. Overflow menu icon

### Container attributes

| &nbsp; | Property |
| --- | --- |
| **Color** | `color` |
| **Stroke color** | N/A |
| **Stroke width** | N/A |
| **Shape** | `shape` |
| **Elevation** | `elevation` |
| **Ripple color** | N/A |

### FAB attributes

**Note to developers: please add a link to your platform's FAB article below**

See [floating action button](link to floating action button here).

### Icons attributes

Using an [`IconButton`](https://api.flutter.dev/flutter/material/IconButton-class.html)

| &nbsp; | Property |
| --- | --- |
| **Icon** | `icon` |
| **Color** | `color` |
| **Size** | `iconSize` |



## Theming

### Theming example

The following example shows a bottom app bar with the [Material Shrine Theme](https://material.io/design/material-studies/shrine.html).


* [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/bottom_app_bars/theme)

![Bottom app bar with Shrine theming](assets/bottom_app_bars/bottom_app_bar_example_themed.png)



