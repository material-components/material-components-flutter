# Expanding Bottom Sheet
#### Engineering Guidance Document

### What is the expanding bottom sheet?
The expanding bottom sheet is a persistent component at the bottom of the screen that allows users to easily access important functionality. To learn more about the expanding bottom sheet, see the [Material Guidelines](https://material.io/design/components/sheets-bottom.html#expanding-bottom-sheet)..

<img src="resources/shrine-expanding-bottom-sheet.png" alt="Expanding bottom sheet in Shrine Material Study" width="300">

### Is there a widget for expanding bottom sheet in Material Components for Flutter?
No. In Flutter, the expanding bottom sheet is an advanced component. Advanced components don't make great reusable components. But you can use existing components and classes to achieve the desired look!

### What are some good ideas for building my own?
When you break it down, expanding bottom sheets are composed of 2 pieces: 
The collapsed view that peeks from the bottom like a floating action button and expands with state changes.
The presentation (open and close) of a full screen modal.

You probably want to start with a StatefulWidget that manages the content in the sheet. You can chain animations in Flutter to accomplish a complex look by using the same AnimationController. 

Handle the expansion and contraction of the collapsed view (based on its content) separately from the full open/close. Take a look at the AnimatedSize widget [link] for a simple implicit animation for that. If the content inside the bottom sheet is a group of similar items, like thumbnails, AnimatedList [link] could handle the insertion and removal of them for you.

If your app includes a backdrop, you may also need a third animation for the removal of the bottom sheet when the backdrop is revealed. See the Navigation Transitions section of the Material Study Shrine for a video showing how the expanding bottom sheet moves off-screen when the backdrop's back layer is exposed.

### Example code
Example code for building a custom expanding bottom sheet can be found in the [Flutter Samples repository on GitHub](https://github.com/flutter/samples/tree/master/shrine/lib). Feel free to use this code as a starting point for your own expanding bottom sheet.

The example uses existing animation widgets like AnimatedSize [link], AnimatedList [link], FadeTransition [link], and ScaleTransition [link].

### Related Documentation
To learn more about animations in Flutter, see [flutter.io/animations](flutter.io/animations).

### From a designer’s point of view
The expanding bottom sheet is an opportunity to give users easy access to an important, but not high-frequency, element of the app.

A summary of the contents of an expanding bottom sheet can be used to help avoid frequent opening and closing of the expanding bottom sheet. This can take the form of additional information in the closed state of the expanding bottom sheet. For instance, Shrine’s closed expanding bottom sheet shows a preview of some of the items in their cart. 

### Why not a reusable code component?
_The expanding bottom sheet is complex._ The component uses multiple types of animations and may depend on app-specific models or information. The level of complexity makes it difficult to generalize for a variety of contexts and a poor candidate for a reusable code component.

_The appearance of an expanding bottom sheet can change with context._
Some apps may only need a single icon in their closed expanding bottom sheets. Others may choose to provide additional information based on the purpose of the expanding bottom sheet. 
Placement and movement of the expanding bottom sheet can also vary--an expanding bottom sheet can expand horizontally or vertically, and open partially or fill the screen when opened. 
