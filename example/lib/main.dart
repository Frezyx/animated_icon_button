import 'package:flutter/material.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: Text('animated_icon_button v0.2.0'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "With background color",
                style: TextStyle(fontSize: 18, color: Colors.black38),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button with background color pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                        startBackgroundColor: Colors.white,
                        endBackgroundColor: Colors.red,
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("With bg color change",
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button without background color pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.purple,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                        startBackgroundColor: Colors.white,
                        endBackgroundColor: Colors.white,
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("Without bg color change",
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Text("Without background color",
                  style: TextStyle(fontSize: 18, color: Colors.black38)),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button with color pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("With color change", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print("button without color change pressed");
                        },
                        duration: Duration(milliseconds: 200),
                        endIcon: Icon(
                          Icons.close,
                          color: Colors.purple,
                        ),
                        startIcon: Icon(
                          Icons.add,
                          color: Colors.purple,
                        ),
                      ),
                      // AnimatedIconButton
                      SizedBox(
                        height: 10,
                      ),
                      Text("Without color change",
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
