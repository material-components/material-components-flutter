# Backdrop
#### Engineering Guidance Document

### What is the backdrop?
The backdrop is a component that consists of a back layer and a front layer. The back layer may be revealed to show context and actions that are relevant to the front layer’s content. To learn more about the backdrop, take a look at the [Material Guidelines](https://material.io/design/components/backdrop.html#).

<img src="resources/crane-backdrop.png" alt="Backdrop in Crane Material Study" width="300">

### Is there a widget for backdrop in Material Components for Flutter?
_No._ In Flutter, the backdrop is an advanced component. Advanced components don't make great reusable components as they tend to be highly specific to your app. But you can use existing components and classes to achieve the desired interaction!

### What are some good ideas for building my own?
When you break it down, backdrops are composed of 2 pieces:
1. The front layer, a view that displays the user’s main content whose height can change to reveal information behind it on certain events.
1. The back layer, that contains context and actionable items that can change the information shown on the front layer.

You probably want to start with a [StatefulWidget](https://material.io/design/components/backdrop.html#) that ties the two pieces together. This widget will contain the back layer and other widgets such as the [AppBar](https://flutter.dev/catalog/samples/basic-app-bar). You will have a separate widget to build out the front layer. To produce the open/close motion of the front layer, build an animation in the back layer’s parent widget and manage it with an [AnimationController](https://docs.flutter.dev/flutter/animation/AnimationController-class.html). Then implement a button on the AppBar to trigger the animation.

### Example code
Example code for building a simple backdrop can be found in the [MDC-Flutter codelabs repo](https://github.com/material-components/material-components-flutter-codelabs/blob/104-complete/mdc_100_series/lib/backdrop.dart).

The example uses existing widgets such as [PositionedTransition](https://docs.flutter.dev/flutter/widgets/PositionedTransition-class.html) in tandem with the [AnimationController](https://docs.flutter.dev/flutter/animation/AnimationController-class.html). It also uses some custom widgets to establish the desired look.

### Codelab
See [MDC-103 for Flutter](http://codelabs.developers.google.com/codelabs/mdc-103-flutter) for a codelab on building this example.

### Related Documentation
To learn more about animations in Flutter, see [flutter.dev/animations](https://flutter.dev/animations).

### From a designer’s point of view
The backdrop is an opportunity to give users easy access to an important element of the app that is secondary to another element. The backdrop’s back layer is persistent yet unobtrusive. Users have immediate access to the actions and content relevant to the front layer.

### Why not a reusable code component?
_The backdrop is complex._ The component uses multiple types of animations and may depend on app-specific models or information. The level of complexity makes it difficult to generalize for a variety of contexts and a poor candidate for a reusable code component.

_The appearance of the backdrop can change with context._
* Some apps may only need a single front layer and back layer, containing the backdrop to a vertical back and forth interaction.
* Tabs may necessitate multiple front layer widgets and may also require custom widgets, as the widgets in Flutter don’t currently support the desired interactions.

In the Material Study [Shrine](https://material.io/design/material-studies/shrine.html#product-architecture), backdrop unveils a menu to filter the products found on the front layer.  In [Crane](https://material.io/design/material-studies/crane.html), the backdrop has multiple front layers that change content based on the selected Tab. The backdrop component has many different uses with various potential uses and doesn’t fit a one size fits all.

_A backdrop is meant to be used only once per app._ You don't need to instantiate more than one for a normal experience even if you have multiple front layers.
