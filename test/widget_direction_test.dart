import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key, required this.animationDirection})
      : super(key: key);
  final AnimationDirection animationDirection;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: AnimatedIconButton(
          key: const Key('testWidget'),
          animationDirection: animationDirection,
          icons: const <AnimatedIconButtonEntry>[
            AnimatedIconButtonEntry(
              icon: Icon(
                Icons.mic,
                color: Colors.purple,
              ),
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
      ),
    );
  }
}

void main() {
  testWidgets(
      'Given AnimatedIconButton(3 icons) with AnimationDirection.bounce() , When tap , Then icon changed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
        const MyWidget(animationDirection: AnimationDirection.bounce()));
    await tester.pump();

    final Finder button = find.byKey(const Key('testWidget'));
    Finder iconWidget = find.byIcon(Icons.mic);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.g_translate);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.collections_sharp);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.g_translate);
    expect(iconWidget, findsOneWidget);
  });

  testWidgets(
      'Given AnimatedIconButton(3 icons) with AnimationDirection.forward() , When tap , Then icon changed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
        const MyWidget(animationDirection: AnimationDirection.forward()));
    await tester.pump();

    final Finder button = find.byKey(const Key('testWidget'));
    Finder iconWidget = find.byIcon(Icons.mic);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.g_translate);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.collections_sharp);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.mic);
    expect(iconWidget, findsOneWidget);
  });
  testWidgets(
      'Given AnimatedIconButton(3 icons) with AnimationDirection.reverse() , When tap , Then icon changed',
      (WidgetTester tester) async {
    await tester.pumpWidget(
        const MyWidget(animationDirection: AnimationDirection.reverse()));
    await tester.pump();

    final Finder button = find.byKey(const Key('testWidget'));
    Finder iconWidget = find.byIcon(Icons.mic);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.collections_sharp);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.g_translate);
    expect(iconWidget, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    iconWidget = find.byIcon(Icons.mic);
    expect(iconWidget, findsOneWidget);
  });
}
