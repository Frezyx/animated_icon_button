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
        primaryColor: Colors.greenAccent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.greenAccent[900],
      body: Center(
        child: AnimatedIconButton(
          size: size.width * 0.2,
          onPressed: () {
            print('button without color change pressed');
          },
          duration: const Duration(milliseconds: 300),
          icons: const <AnimatedIconItem>[
            AnimatedIconItem(
              icon: Icon(
                Icons.add,
                color: Colors.greenAccent,
              ),
              backgroundColor: Colors.white,
            ),
            AnimatedIconItem(
              icon: Icon(
                Icons.comment,
                color: Colors.greenAccent,
              ),
              backgroundColor: Colors.white,
            ),
            AnimatedIconItem(
              icon: Icon(
                Icons.phone,
                color: Colors.greenAccent,
              ),
              backgroundColor: Colors.white,
            ),
            AnimatedIconItem(
              icon: Icon(
                Icons.star,
                color: Colors.greenAccent,
              ),
              backgroundColor: Colors.white,
            ),
            AnimatedIconItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.greenAccent,
              ),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
