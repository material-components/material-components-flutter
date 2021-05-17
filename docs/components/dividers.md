<!--docs:
title: "Material dividers"
layout: detail
section: components
excerpt: "A divider is a thin line that groups content in lists and layouts."
iconId:
path: /catalog/material-dividers/
-->

# Dividers

A [divider](https://material.io/components/dividers) is a thin line that groups content in lists and layouts.

![Grey inset dividers separating emails](assets/dividers/Dividers_hero.png)

**Contents**

- [Making dividers accessible](#making-dividers-accessible)
- [Anatomy and key properties](#anatomy-and-key-properties)
- [Types](#types)
- [Theming dividers](#theming-dividers)

## Making dividers accessible

Flutter's APIs support accessibility setting for large fonts, screen readers, and sufficient contrast. For more information, go to Flutter's [accessibility](https://flutter.dev/docs/development/accessibility-and-localization/accessibility) and [internationalization](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) pages.

For more guidance on writing labels, go to [our page on how to write a good accessibility label](https://material.io/design/usability/accessibility.html#writing).

## Anatomy and key properties

The following shows the anatomy of a divider:

![Divider anatomy](assets/dividers/dividers_anatomy.png)

### Divider

| &nbsp; | Property |
|---|---|
| Color | Within the `Divider` widget use the `color` parameter |
| Space | Within the `Divider` widget use the `height` parameter. Within the `VerticalDivider` widget use the  `width` parameter.|
| Indent | Within the `Divider` widget use the `indent` parameter |
| End Indent | Within the `Divider` widget use the `endIndent` parameter |
| Thickness | Within the `Divider` widget use the `thickness` parameter |

## Types

There are 4 types of dividers:

1. [Full Bleed divider](#full-bleed-dividers)
2. [Inset divider](#inset-dividers)
3. [Middle divider](#middle-dividers)
4. [Vertical divider](#flutter-vertical-dividers)

### Full-bleed dividers

Full-bleed dividers separate content into sections and span the entire length of a layout.

#### Full-bleed dividers example

- [Class definition](https://api.flutter.dev/flutter/material/Divider-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/divider.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/dividers/full_bleed_divider&gh_ref=develop)
- [YouTube video](https://www.youtube.com/watch?v=_liUC641Nmk&vl=en&ab_channel=Flutter)

The following example shows a list with full-bleed dividers:

![2 grey dividers span the screen width, divided by text "Item 4"](assets/dividers/full_bleed_divider.png)

```dart
Divider(),
```

### Inset dividers

Inset dividers separate related content, anchored by elements that align with the app bar title.

#### Inset divider example

- [Class definition](https://api.flutter.dev/flutter/material/Divider-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/divider.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/dividers/inset_divider&gh_ref=develop)

The following example shows two lists separated by an inset divider and a subheader

![Grey line spanning screen with margin between left-hand screen and divider edge. "Subheader" in grey beneath divider](assets/dividers/inset_divider.png)

```dart
Divider(indent: 16),
Container(
  padding: EdgeInsets.only(left: 16),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Subheader',
      style: Theme.of(context).textTheme.bodyText2.copyWith(
          fontSize: 12.0,
          color: Theme.of(context).textTheme.caption.color),
      textAlign: TextAlign.start,
    ),
  ),
),
```

### Middle dividers

Middle dividers space related content and are centered in a layout or list.

#### Middle divider example

- [Class definition](https://api.flutter.dev/flutter/material/Divider-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/divider.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/dividers/middle_divider&gh_ref=develop)

The following example shows a middle divider separating a list of items and their prices and the total cost:

![Grey line spanning screen with margins on either side of line](assets/dividers/middle_divider.png)

```dart
Divider(
  indent: 16,
  endIndent: 16,
),
```

### Flutter Vertical Dividers

Vertical divider offers the same parameters as the regular divider but instead the divider is vertical.

`VerticalDivider`

- [Class definition](https://api.flutter.dev/flutter/material/VerticalDivider-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/divider.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/dividers/vertical_divider&gh_ref=develop)

![Grey line spanning screen height](assets/dividers/vertical_divider.png)

```dart
VerticalDivider()
```

## Theming dividers

`Divider`

- [Class definition](https://api.flutter.dev/flutter/material/Divider-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/divider.dart)
- [Dartpad demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/dividers/theme&gh_ref=develop)

The following shows an inset divider with [Shrine theming](https://material.io/design/material-studies/shrine.html)

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildShrineTheme(),
      home: Scaffold(
        body: DividerThemeDemo(),
      ),
    );
  }
}

class DividerThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.amber,
              child: const Center(
                child: Text('Start'),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('End'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    accentColor: shrineBrown900,
    primaryColor: shrinePink100,
    buttonColor: shrinePink100,
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionTheme: TextSelectionThemeData(selectionColor: shrinePink100),
    errorColor: shrineErrorRed,
    buttonTheme: const ButtonThemeData(
      colorScheme: _shrineColorScheme,
      textTheme: ButtonTextTheme.normal,
    ),
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
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
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;

```
