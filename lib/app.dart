import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: GestureDetector(
            onTapDown: (tapDownDetails) {
              animationController.stop();
            },
            onTapUp: (tapDownDetails) {
              animationController.repeat();
            },
            child: RotationTransition(
                alignment: Alignment.center,
                turns: animationController,
                child: Center(child: Image.asset("assest/global.jpg"))),
          ),
        ),
      ),
    );
  }
}
