import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _progressBorderAc;
  late Animation<double> animation;

  @override
  void initState() {
    _progressBorderAc = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    final tween = Tween<double>(
      begin: 25.0,
      end: 50.0,
    );
    animation = tween.animate(_progressBorderAc)
      ..addStatusListener((state) => print('$state'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final Color color = Colors.blueAccent;
    return Material(
      color: const Color(0xFF212121),
      child: Center(
        child: AnimatedBuilder(
          builder: (BuildContext context, Widget? child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(
                      animation.value / 100 * 2,
                    ),
                    blurRadius: animation.value,
                  )
                ],
              ),
              child: AnimatedIconButton(
                size: size.width * 0.25,
                onPressed: () async {
                  await _progressBorderAc.forward();
                  await _progressBorderAc.reverse();
                },
                duration: const Duration(milliseconds: 300),
                icons: <AnimatedIconItem>[
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.amd, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.nasa, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.intel, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.man, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.acer, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.travisci, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.ea, color: color),
                    backgroundColor: Colors.white,
                  ),
                  AnimatedIconItem(
                    icon: Icon(SimpleIcons.dior, color: color),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            );
          },
          animation: animation,
        ),
      ),
    );
  }
}
