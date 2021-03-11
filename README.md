# animated_icon_button

[![Build Status](https://travis-ci.com/Frezyx/animated_icon_button.svg?branch=master)](https://travis-ci.com/Frezyx/animated_icon_button) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) ![Pub](https://img.shields.io/pub/v/animated_icon_button.svg)
![Stars](https://img.shields.io/github/stars/Frezyx/animated_icon_button?style=social)

😊 Flutter package to create custom <strong>animated</strong> IconButton.</br>
😵 <strong>Includes all available icons.</strong> Based on native IconButton.

## Breaking Change
After `1.0.0` version you can use multiple icons.


<img src="https://github.com/Frezyx/animated_icon_button/blob/master/example/rep_files/preview.gif?raw=true" width="270">

## Getting Started
Follow these steps to use this library

### Add dependency

```yaml
dependencies:
  animated_icon_button: ^1.0.0 #latest version
```

### Add import package

```dart
import 'package:animated_icon_button/animated_icon_button.dart';
```

### Easy to use
Simple example of use AnimatedIconButton<br>
Put this code in your project at an screen and wait for magic 😊
```dart
    AnimatedIconButton(
        onPressed: () => print('all icons pressed'),
        icons: [
            AnimatedIconButtonEntry(
                icon: Icon(Icons.add),
                onPressed: () => print('add pressed'),
            ),
            AnimatedIconButtonEntry(
                icon: Icon(Icons.close),
            ),
        ],
    ),
```


### More icons
Now you can use more than 2 icons
Add new icons to your list and they will change one by one

```dart
    AnimatedIconButton(
        size: 35,
        onPressed: () {
            print('all icons pressed');
        },
        duration: const Duration(milliseconds: 200),
        icons: <AnimatedIconButtonEntry>[
            AnimatedIconButtonEntry(
                icon: Icon(
                    Icons.mic,
                    color: Colors.purple,
                ),
                onPressed: () => print('mic pressed'),
                backgroundColor: Colors.white,
            ),
            AnimatedIconButtonEntry(
                icon: Icon(
                    Icons.g_translate,
                    color: Colors.purple,
                ),
                backgroundColor: Colors.white,
            ),
            AnimatedIconButtonEntry(
                icon: Icon(
                    Icons.collections_sharp,
                    color: Colors.purple,
                ),
                backgroundColor: Colors.white,
            ),
        ],
    ),
```

### Custom animation controller

In order to animate your icons in a custom way, like on text changed or when pressing a button, just use the ```animationController``` property as follows. </br>

```dart
    var animationController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 200),
        reverseDuration: Duration(milliseconds: 200),
    );

    AnimatedIconButton(
        animationController: animationController,
        size: 35,
        onPressed: () {
            print('all icons pressed');
        },
        duration: const Duration(milliseconds: 200),
        icons: <AnimatedIconButtonEntry>[
            AnimatedIconButtonEntry(
                icon: Icon(
                    Icons.mic,
                    color: Colors.purple,
                ),
                onPressed: () => print('mic pressed'),
                backgroundColor: Colors.white,
            ),
            AnimatedIconButtonEntry(
                icon: Icon(
                    Icons.g_translate,
                    color: Colors.purple,
                ),
                backgroundColor: Colors.white,
            ),
            AnimatedIconButtonEntry(
                icon: Icon(
                    Icons.collections_sharp,
                    color: Colors.purple,
                ),
                backgroundColor: Colors.white,
            ),
        ],
    ),
```

Then, whenever you want, execute your ```animationController.forward()``` and ```animationController.reverse()``` methods to get your icons animated.

Don't forget when you use this property ```duration``` is not used, so it can be emitted.

