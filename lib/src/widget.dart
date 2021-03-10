import 'dart:math' as math;
import 'package:animated_icon_button/src/unions.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class AnimatedIconButton extends StatefulWidget {
  AnimatedIconButton({
    Key? key,
    this.size = 30,
    this.initialIcon = 0,
    required this.icons,
    required this.onPressed,
    this.animationController,
    this.animationDirection = const AnimationDirection.bounce(),
    this.duration = const Duration(milliseconds: 200),
    this.padding = const EdgeInsets.all(8.0),
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.focusNode,
    this.autofocus = false,
    this.enableFeedback = true,
    this.constraints,
    this.visualDensity,
    this.alignment = Alignment.center,
    this.splashRadius,
  }) : super(key: key);

  /// The size of the [AnimatedIconButton].
  final double size;

  /// The index of [icons] to start with
  final int initialIcon;

  /// The [AnimatedIcon] of the [AnimatedIconButton]
  final List<AnimatedIconButtonEntry> icons;

  /// Animation time of the [AnimatedIconButton].
  ///
  /// If an [AnimationController] is specified, [Duration] must be null
  /// in order to prevent an asynchronous animation. The [Duration] used will
  /// be the one defined on [AnimationController]
  final Duration? duration;

  /// The custom [AnimationController] of the [AnimatedIconButton].
  ///
  /// When not specified the [AnimatedIconButton] will change it's icons and
  /// background color whenever [AnimatedIconButton] is pressed.
  final AnimationController? animationController;

  /// The [AnimationDirection] of the [AnimatedIconButton].
  ///
  /// [AnimationDirection.forward] forces the animation to run in a forward loop
  /// [AnimationDirection.reverse] forces the animation to run in a reverse loop
  /// [AnimationDirection.bounce] forces the animation to bounce at the start and end of [icons] back and forth
  final AnimationDirection animationDirection;

  /// The callback that is called when the button is tapped or otherwise activated.
  ///
  /// If this is set to null, the button will be disabled.
  final Function? onPressed;

  /// The color for the button's icon when it has the input focus.
  ///
  /// Defaults to [ThemeData.focusColor] of the ambient theme.
  final Color? focusColor;

  /// The color for the button's icon when a pointer is hovering over it.
  ///
  /// Defaults to [ThemeData.hoverColor] of the ambient theme.
  final Color? hoverColor;

  /// The secondary color of the button when the button is in the down (pressed)
  /// state. The highlight color is represented as a solid color that is overlaid over the
  /// button color (if any). If the highlight color has transparency, the button color
  /// will show through. The highlight fades in quickly as the button is held down.
  ///
  /// Defaults to the Theme's highlight color, [ThemeData.highlightColor].
  final Color? highlightColor;

  /// The primary color of the button when the button is in the down (pressed) state.
  /// The splash is represented as a circular overlay that appears above the
  /// [highlightColor] overlay. The splash overlay has a center point that matches
  /// the hit point of the user touch event. The splash overlay will expand to
  /// fill the button area if the touch is held for long enough time. If the splash
  /// color has transparency then the highlight and button color will show through.
  ///
  /// Defaults to the Theme's splash color, [ThemeData.splashColor].
  final Color? splashColor;

  /// The color to use for the icon inside the button, if the icon is disabled.
  /// Defaults to the [ThemeData.disabledColor] of the current [Theme].
  ///
  /// The icon is disabled if [onPressed] is null.
  final Color? disabledColor;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  ///
  /// See also:
  ///
  ///  * [Feedback] for providing platform-specific feedback to certain actions.
  final bool enableFeedback;

  /// Optional size constraints for the button.
  ///
  /// When unspecified, defaults to:
  /// ```dart
  /// const BoxConstraints(
  ///   minWidth: kMinInteractiveDimension,
  ///   minHeight: kMinInteractiveDimension,
  /// )
  /// ```
  /// where [kMinInteractiveDimension] is 48.0, and then with visual density
  /// applied.
  ///
  /// The default constraints ensure that the button is accessible.
  /// Specifying this parameter enables creation of buttons smaller than
  /// the minimum size, but it is not recommended.
  ///
  /// The visual density uses the [visualDensity] parameter if specified,
  /// and `Theme.of(context).visualDensity` otherwise.
  final BoxConstraints? constraints;

  /// Defines how compact the icon button's layout will be.
  ///
  /// {@macro flutter.material.themedata.visualDensity}
  ///
  /// See also:
  ///
  ///  * [ThemeData.visualDensity], which specifies the [density] for all widgets
  ///    within a [Theme].
  final VisualDensity? visualDensity;

  /// The padding around the button's icon. The entire padded icon will react
  /// to input gestures.
  ///
  /// This property must not be null. It defaults to 8.0 padding on all sides.
  final EdgeInsets padding;

  /// Defines how the icon is positioned within the IconButton.
  ///
  /// This property must not be null. It defaults to [Alignment.center].
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final Alignment alignment;

  /// The splash radius.
  ///
  /// If null, default splash radius of [Material.defaultSplashRadius] is used.
  /// Field of IconButton
  final double? splashRadius;

  @override
  _AnimatedIconButtonState createState() => _AnimatedIconButtonState(
        initialIcon: initialIcon,
        icons: icons,
        animationDirection: animationDirection,
      );
}

class _AnimatedIconButtonState extends State<AnimatedIconButton>
    with SingleTickerProviderStateMixin {
  _AnimatedIconButtonState({
    required int initialIcon,
    required List<AnimatedIconButtonEntry> icons,
    required AnimationDirection animationDirection,
  })   : assert(initialIcon < icons.length,
            'initialIcon must be lower than the icons.length'),
        nowIndex = initialIcon,
        nowDirection = animationDirection,
        nowIcon = icons[initialIcon];

  late final AnimationController animationController;

  int nowIndex;
  AnimationDirection nowDirection;
  AnimatedIconButtonEntry nowIcon;
  late final Animation<double> _arrowAnimation;
  late final Duration halfDuration;

  @override
  void initState() {
    animationController = widget.animationController ??
        AnimationController(vsync: this, duration: widget.duration);
    _addStatusListener();

    _arrowAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    halfDuration = Duration(
        milliseconds: animationController.duration!.inMilliseconds ~/ 2);

    super.initState();
  }

  void _addStatusListener() {
    animationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.forward ||
          status == AnimationStatus.reverse) {
        _changeIcon(status);
      }
      // }
    });
  }

  /// sets the next [nowIndex] and [nowIcon] based on [status]
  Future<void> _changeIcon(AnimationStatus status) async {
    await Future<void>.delayed(halfDuration);
    if (status == AnimationStatus.reverse) {
      nowIndex = _previousIndex();
    } else {
      nowIndex = _nextIndex();
    }
    setState(() {
      nowIcon = widget.icons[nowIndex];
    });
  }

  /// based on the passed [direction] transitions forwards or backwards
  /// with [AnimationDirection.bounce] the start and end of [widget.icons] reflects
  Future<void> runAnimation(AnimationDirection direction) async {
    direction.map(forward: (_) {
      animationController.value = animationController.lowerBound;
      animationController.forward();
    }, reverse: (_) {
      animationController.value = animationController.upperBound;
      animationController.reverse();
    }, bounce: (_) {
      if (nowIndex == 0) {
        nowDirection = const AnimationDirection.forward();
      } else if (nowIndex == widget.icons.length - 1) {
        nowDirection = const AnimationDirection.reverse();
      }
      runAnimation(nowDirection);
    });
  }

  int _nextIndex() {
    return nowIndex + 1 < widget.icons.length ? nowIndex + 1 : 0;
  }

  int _previousIndex() {
    return nowIndex - 1 < 0 ? widget.icons.length - 1 : nowIndex - 1;
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: widget.size,
      backgroundColor: nowIcon.backgroundColor,
      child: buildIconButton(),
    );
  }

  IconButton buildIconButton() {
    return IconButton(
      iconSize: widget.size,
      onPressed: () {
        nowIcon.onPressed?.call();
        widget.onPressed?.call();
        runAnimation(widget.animationDirection);
      },
      icon: AnimatedBuilder(
          animation: animationController,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _arrowAnimation.value * 2.0 * math.pi,
              child: child,
            );
          },
          child: nowIcon.icon),
      focusColor: widget.focusColor,
      hoverColor: widget.hoverColor,
      highlightColor: widget.highlightColor,
      splashColor: widget.splashColor,
      disabledColor: widget.disabledColor,
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      enableFeedback: widget.enableFeedback,
      tooltip: nowIcon.tooltip,
      constraints: widget.constraints,
      visualDensity: widget.visualDensity,
      padding: widget.padding,
      alignment: widget.alignment,
      splashRadius: widget.splashRadius,
    );
  }
}
