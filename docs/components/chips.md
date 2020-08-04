<!--docs:
title: "Material chips"
layout: detail
section: components
excerpt: "Chips are compact elements that represent an input, attribute, or action."
iconId: 
path: /catalog/material-chips/
-->

# Chips

[Chips](https://material.io/components/chips) are compact elements that represent an input, attribute, or action.

![Hero image of an input chip](assets/chips/chips-hero.png)

## Contents

- [Chips](#chips)
  - [Using chips](#using-chips)
    - [Installing chips](#installing-chips)
    - [Importing chips](#importing-chips)
    - [Making chips accessible](#making-chips-accessible)
  - [Anatomy and key properties](#anatomy-and-key-properties)
    - [Container](#container)
    - [Thumbnail](#thumbnail)
    - [Text](#text)
    - [Remove icon](#remove-icon)
  - [Types](#types)
    - [Input chips](#input-chips)
      - [Input chips example](#input-chips-example)
    - [Choice chips](#choice-chips)
      - [Choice chips example](#choice-chips-example)
    - [Filter chips](#filter-chips)
      - [Filter chips example](#filter-chips-example)
    - [Action chips](#action-chips)
      - [Action chips example](#action-chips-example)
  - [Theming](#theming)
    - [Theming example](#theming-example)

## Using chips

Chips allow users to enter information, make selections, filter content, or trigger actions. While buttons are expected to appear consistently and with familiar calls to action, chips should appear dynamically as a group of multiple interactive elements.

### Installing chips

### Importing chips

### Making chips accessible

**Note to developers: List/describe any accessibility settings or attributes associated with chips**

## Anatomy and key properties

The following is an anatomy diagram of a chip:

![Chip anatomy diagram](assets/chips/Chips_anatomy.png)

1. Container
1. Thumbnail (optional)
1. Text
1. Remove icon (optional)

### Container

&nbsp; | Property
------ | ---------
**Color** |
**Height** |
**Overlay window** |

### Thumbnail

&nbsp;         | Property
-------------- | ------------------------
 |

### Text

&nbsp;         | Property
-------------- | ------------------------
**Text label** |
**Color**      |
**Typography** |

### Remove icon

&nbsp;         | Property
-------------- | ------------------------
 |

## Types

There are four different types of chips that are subclasses of [`Chip`](https://api.flutter.dev/flutter/material/Chip-class.html), including [input](#input-chips), [choice](#choice-chips), [filter](#filter-chips), and [action](#action-chips).

![Examples of the four different chip types](assets/chips/Chips_composite.png)

### Input chips

Input chips represent a complex piece of information in compact form, such as an entity (person, place, or thing) or text. They enable user input and verify that input by converting text into chips.

#### Input chips example

`InputChip`

- [Class definition](https://api.flutter.dev/flutter/material/InputChip-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/fabf4e3d0d311181178d2c601d29a2f739ea543a/packages/flutter/lib/src/material/chip.dart)
- [Demo site](link to dartpad demo)

**Note to developers** Create an input chips example with the following features:

- Generate three chips; each chip has a "remove" icon and is labeled:
  - "Input 1"
  - "Input 2"
  - "Input 3"
- In the chips container, include an incomplete text entry for "Input 4"

### Choice chips

Choice chips allow selection of a single chip from a set of options.

Choice chips clearly delineate and display options in a compact area. They are a good alternative to toggle buttons, radio buttons, and single select menus.

#### Choice chips example

`ChoiceChip`

- [Class definition](https://api.flutter.dev/flutter/material/ChoiceChip-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/fabf4e3d0d311181178d2c601d29a2f739ea543a/packages/flutter/lib/src/material/chip.dart)
- [Demo site](link to dartpad demo)

**Note to developers** Create a choice chips example with the following features:

- Generate four choice chips labeled:
  - "Choice 1"
  - "Choice 2"
  - "Choice 3"
  - "Choice 4"
- Show a screenshot of "Choice 1" as selected

### Filter chips

Filter chips use tags or descriptive words to filter content.

Filter chips clearly delineate and display options in a compact area. They are a good alternative to toggle buttons or checkboxes.

#### Filter chips example

`FilterChip`

- [Class definition](https://api.flutter.dev/flutter/material/FilterChip-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/fabf4e3d0d311181178d2c601d29a2f739ea543a/packages/flutter/lib/src/material/chip.dart)
- [Demo site](link to dartpad demo)

**Note to developers** Create a filter chips example with the following features:

- Generate six filter chips, each labeled "Filter 1", "Filter 2" ... "Filter 6"
- Show a screenshot of "Filter 1" and "Filter 3" as selected with a check icon

### Action chips

Action chips offer actions related to primary content. They should appear dynamically and contextually in a UI.

An alternative to action chips are buttons, which should appear persistently and consistently.

#### Action chips example

`ChoiceChip`

- [Class definition](https://api.flutter.dev/flutter/material/ActionChip-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/fabf4e3d0d311181178d2c601d29a2f739ea543a/packages/flutter/lib/src/material/chip.dart)
- [Demo site](link to dartpad demo)

**Note to developers** Create an action chips example with the following features:

- Generate four actions chips, labeled:
  - "Action 1" with a favorites icon
  - "Action 2" with a trash icon
  - "Action 3" with an alarm icon
  - "Action 4" with a location icon

## Theming

Chips support [Material Theming](https://material.io/components/chips/#theming) and can be customized in terms of color, typography and shape.

### Theming example

`InputChip`

- [Class definition](https://api.flutter.dev/flutter/material/InputChip-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/fabf4e3d0d311181178d2c601d29a2f739ea543a/packages/flutter/lib/src/material/chip.dart)
- [Demo site](link to dartpad demo)

**Note to developers** Create an input chips example with the following features using the [Shrine theme](https://material.io/design/material-studies/shrine.html):

- Generate three chips; each chip has a "remove" icon and is labeled:
  - "Input 1" with an "add\_shopping\_cart" icon
  - "Input 2" with a "card\_giftcard" icon
  - "Input 3" with a "credit\_card" icon
- In the chips container, include an incomplete text entry for "Input 4"
