<!--docs:
title: "Lists"
layout: detail
section: components
excerpt: "Lists are continuous, vertical indexes of text or images."
iconId:
path: /catalog/lists/
-->

# Lists

[Lists](https://material.io/components/lists/) are continuous, vertical indexes of text or images.

There are three list types:
1. [Single-line list](#single-line-list)
1. [Two-line list](#two-line-list)
1. [Three-line list](#three-line-list)

![Composite image of the three list types](assets/lists/lists-types.png)

## Using lists

### Making lists accessible

Flutter's card component APIs support labeling for accessibility. For more guidance on writing labels, go to [our page on how to write a good accessibility label](https://material.io/design/usability/accessibility.html#writing).


## List anatomy

The following anatomy diagram applies to all three list types:

![List anatomy diagram showing list, row, and list item content](assets/lists/list-content-anatomy.png)

The following anatomy diagrams apply  to the list item content:

![List item content showing supporting visuals, primary text, metadata, and controls in two list components](assets/lists/combined-list-content.png)


A list consists of the following attributes:
1. List
1. Row
1. List item content
    1. Supporting visuals
    1. Primary text
    1. Metadata
    1. Controls



## Single-line list

Single-line list items contain a maximum of one line of text.



### Single-line list example

Source code API:
`ListTile`
* [Class definition](https://api.flutter.dev/flutter/material/ListTile-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/list_tile.dart)
* [Dartpad Demo](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/lists/single)

![Single-list example](assets/lists/single-line-list-example.png)

```dart
ListView(
  children: [
    for (int count in List.generate(9, (index) => index + 1))
      ListTile(
        title: Text('List item $count'),
        leading: Icon(Icons.local_offer),
        trailing: Text("0$count"),
      )
  ],
)
```

### Single-line list key properties


#### List properties

| &nbsp; | Property |
|---|---|
| | |

#### Row properties

| &nbsp; | Property |
|---|---|
| | |


#### List item content

The following are tables of the list item contents:


##### Supporting visuals

| &nbsp; | Property |
|---|---|
| | |


##### Primary text

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |


##### Metadata

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |


##### Controls

| &nbsp; | Property |
|---|---|
| | |


## Two-line list

Two-line list items contain a maximum of two lines of text.


### Two-line list example


Source code API:
`ListTile`
* [Class definition](https://api.flutter.dev/flutter/material/ListTile-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/list_tile.dart)


**Note to developers**
Provide a two-line list example screenshot and example code with the following:
* List item titles for 3+ list items, starting with "List item 1"
* Each list item should have a secondary text line that reads 'Secondary text'
* Each item should have a 'label' icon as its supporting visual
* Each item shoud have a radio control


### Two-line list key properties

The following are tables of the list item contents:


#### List item content

The following are tables of the list item contents:



##### Supporting visuals

| &nbsp; | Property |
|---|---|
| | |


##### Primary text

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |

##### Seconary tet

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |

##### Metadata

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |


##### Controls

| &nbsp; | Property |
|---|---|
| | |


### Three-line list

Three-line list items contains a maximum of three lines of text.


### Three-line list example


Source code API:
`ListTile`
* [Class definition](https://api.flutter.dev/flutter/material/ListTile-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/list_tile.dart)

**Note to developers**
Provide a three-line list example screenshot and example code with the following:
* List item titles for 3+ list items, starting with "List item 1"
* Each list item should have a secondary text line that reads 'Secondary text'
* Each list item should have a tertiary text line that reads 'Tertiary text'
* Each item should have a 'label' icon as its supporting visual
* Each item shoud have a checkbox


### Three-line list key properties

The following are tables of the list item contents:


##### Supporting visuals

| &nbsp; | Property |
|---|---|
| | |


##### Primary text

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |

##### Secondary text

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |


##### Tertiary text

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |


##### Metadata

| &nbsp; | Property |
|---|---|
| Text label | Not by default but can be made by using `ListTile()` and use property `title` |
| Text color | Within `title` property you can customize the Text color by using the `style` property. The `style` property uses a `TextStyle` property and within that class use the `color` property |
| Typography | Within `title` property you can customize the typography by using the `style property`. The `style` property uses a `TextStyle` property and within that class use the `fontFamily` property |


##### Controls

| &nbsp; | Property |
|---|---|
| | |


### Theming lists

Lists support [Material Theming](https://material.io/components/buttons/#theming) and can be
customized in terms of color, typography and shape.

**Note to developers**
Provide a screenshot and code for an example list using Shrine theming with the following properties:

* A three-line list example
* List item titles for 3+ list items, starting with "List item 1"
* Each list item should have a secondary text line that reads 'Secondary text'
* Each list item should have a tertiary text line that reads 'Tertiary text'
* Each item should have a 'label' icon as its supporting visual
* Each item shoud have a checkbox
