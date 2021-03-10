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
          title: const Text('animated_icon_button v0.4.1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'With background color',
                style: TextStyle(fontSize: 18, color: Colors.black38),
              ),
              const SizedBox(
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
                          print('button with background color pressed');
                        },
                        duration: const Duration(milliseconds: 200),
                        icons: const <AnimatedIconButtonEntry>[
                          AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.add,
                              color: Colors.purple,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      // AnimatedIconButton
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('With bg color change',
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print('button without background color pressed');
                        },
                        duration: const Duration(milliseconds: 200),
                        icons: <AnimatedIconButtonEntry>[
                          AnimatedIconButtonEntry(
                            icon: const Icon(
                              Icons.mic,
                              color: Colors.purple,
                            ),
                            onPressed: () => print('just pressed the mic'),
                            backgroundColor: Colors.white,
                          ),
                          const AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.g_translate,
                              color: Colors.purple,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          const AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.collections_sharp,
                              color: Colors.purple,
                            ),
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      // AnimatedIconButton
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Without bg color change',
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              const Text('Without background color',
                  style: TextStyle(fontSize: 18, color: Colors.black38)),
              const SizedBox(
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
                          print('button with color pressed');
                        },
                        duration: const Duration(milliseconds: 200),
                        icons: const <AnimatedIconButtonEntry>[
                          AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.add,
                              color: Colors.purple,
                            ),
                          ),
                          AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      // AnimatedIconButton
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('With color change',
                          style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      // AnimatedIconButton
                      AnimatedIconButton(
                        size: 35,
                        onPressed: () {
                          print('button without color change pressed');
                        },
                        duration: const Duration(milliseconds: 200),
                        icons: const <AnimatedIconButtonEntry>[
                          AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.add,
                              color: Colors.purple,
                            ),
                            backgroundColor: Colors.white,
                          ),
                          AnimatedIconButtonEntry(
                            icon: Icon(
                              Icons.close,
                              color: Colors.purple,
                            ),
                            backgroundColor: Colors.red,
                          ),
                        ],
                      ),
                      // AnimatedIconButton
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Without color change',
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
