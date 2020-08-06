<!--docs:
title: "Material progress indicators"
layout: detail
section: components
excerpt: "Progress indicators express an unspecified wait time or display the length of a process."
iconId:
path: /catalog/material-progress-indicators/
-->

# Progress indicators

[Progress indicators](https://material.io/components/progress-indicators) express an unspecified wait time or display the length of a process.

![Progress indicator hero](assets/progress_indicators/hero-1.gif)

## Contents

- [Progress indicators](#progress-indicators)
  - [Contents](#contents)
  - [Using progress indicators](#using-progress-indicators)
    - [Making progress indicators accessible](#making-progress-indicators-accessible)
  - [Types](#types)
  - [Linear progress indicators](#linear-progress-indicators)
    - [Linear progress indicator example](#linear-progress-indicator-example)
  - [Anatomy and key properties](#anatomy-and-key-properties)
    - [Linear track](#linear-track)
    - [Linear indicator](#linear-indicator)
  - [Circular progress indicators](#circular-progress-indicators)
    - [Circular progress indicator example](#circular-progress-indicator-example)
  - [Theming progress indicators](#theming-progress-indicators)

## Using progress indicators

Progress indicators inform users about the status of ongoing processes, such as loading an app, submitting a form, or saving updates. They communicate an app’s state and indicate available actions, such as whether users can navigate away from the current screen.

### Making progress indicators accessible

Flutter's APIs support accessibility setting for large fonts, screen readers, and sufficient contrast. For more information, go to Flutter's [accessibility](https://flutter.dev/docs/development/accessibility-and-localization/accessibility) and [internationalization](https://flutter.dev/docs/development/accessibility-and-localization/internationalization) pages.

## Types

Material Design offers two visually distinct types of progress indicators:  1. [linear](#linear-progress-indicators) 2. [circular](#circular-progress-indicators) progress indicators. Only one type should represent each kind of activity in an app. For example, if a refresh action displays a circular indicator on one screen, that same action shouldn’t use a linear indicator elsewhere in the app.

![Composite image of progress indicator types](assets/progress_indicators/composite-1.gif)

Flutter implements these as subtypes of the [`ProgressIndicator`](https://api.flutter.dev/flutter/material/ProgressIndicator-class.html) class.

## Linear progress indicators

Linear progress indicators display progress by animating an indicator along the length of a fixed, visible track. The behavior of the indicator is dependent on whether the progress of a process is known.

- Linear progress indicators support both determinate and indeterminate operations.
- Determinate operations display the indicator increasing in width from 0 to 100% of the track, in sync with the process’s progress.
- Indeterminate operations display the indicator continually growing and shrinking along the track until the process is complete.

### Linear progress indicator example

`LinearProgressIndicator`

- [Class definition](https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/progress_indicator.dart)
- [Demo site](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/progress_indicators/linear)

The following example shows an indeterminate linear progress indicator:

![Linear Progress Indicator](assets/progress_indicators/linear_progress_indicator.png)

```dart
body: Center(
    child: LinearProgressIndicator(),
),
```

## Anatomy and key properties

The following is an anatomy diagram of a linear progress indicator:

![Linear progress indicator anatomy](assets/progress_indicators/LinearProgress_anatomy.png)

A linear progress indicator consists of the following:

1. Track
1. Indicator

### Linear track

The track is a fixed width rule, with set boundaries for the indicator to travel along.

&nbsp;         | Property
-------------- | ------------------------
**Color**| backgroundColor

### Linear indicator

The indicator animates along the length of the track.

&nbsp;         | Property
-------------- | ------------------------
**Color** | valueColor and use the class AlwaysStoppedAnimation<>()

## Circular progress indicators

Circular progress indicators display progress by animating an indicator along an invisible circular track in a clockwise direction. They can be applied directly to a surface, such as a button or card.

- Circular progress indicators support both determinate and indeterminate processes.
- Determinate circular indicators fill the invisible, circular track with color, as the indicator moves from 0 to 360 degrees.
- Indeterminate circular indicators grow and shrink in size while moving along the invisible track.

![Circular progress indicator](insert circular progress indicator static image)

### Circular progress indicator example

`CircularProgressIndicator`

- [Class definition](https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/progress_indicator.dart)
- [Demo site](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/progress_indicators/circular)

The following shows a determinate circular progress indicator

![Circular Progress Indicator](assets/progress_indicators/circular_progress_indicator.png)

## Theming progress indicators

`LinearProgressIndicator`

- [Class definition](https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/progress_indicator.dart)
- [Demo site](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/progress_indicators/theme)

`CircularProgressIndicator`

- [Class definition](https://api.flutter.dev/flutter/material/CircularProgressIndicator-class.html)
- [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/progress_indicator.dart)
- [Demo site](https://dartpad.dev/embed-flutter.html?gh_owner=material-components&gh_repo=material-components-flutter&gh_path=docs/components/dartpad/progress_indicators/theme)

The following shows an indeterminate linear progress indicator and a determinate circular progress indicator with [Shrine theming](https://material.io/design/material-studies/shrine.html):

![Circular Progress Indicator](assets/progress_indicators/theme_progress_indicator.png)

- Create an indeterminate linear progress indicator
- A determinate circular progress indicator
