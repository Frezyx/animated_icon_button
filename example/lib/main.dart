import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedIconButton(
          size: 100,
          onPressed: () {},
          duration: const Duration(milliseconds: 500),
          splashColor: Colors.transparent,
          icons: const <AnimatedIconItem>[
            AnimatedIconItem(
              icon: Icon(Icons.add, color: Colors.purple),
            ),
            AnimatedIconItem(
              icon: Icon(Icons.close, color: Colors.purple),
            ),
          ],
        ),
        // AnimatedIconButton
      ),
    );
  }
}
