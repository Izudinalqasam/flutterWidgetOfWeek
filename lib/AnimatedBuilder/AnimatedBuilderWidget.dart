import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  @override
  _AnimatedBuilderWidgetState createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    // pi = 180 derajat
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this)
          ..repeat();

    animation = Tween(begin: 0, end: 2 * pi).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Positioned Widget"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("North"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("West"),
                AnimatedBuilder(
                  animation: animation,
                  child: Icon(
                    Icons.navigation,
                    size: 200,
                  ),
                  builder: (context, child) => Transform.rotate(
                    angle: animation.value,
                    child: child,
                  ),
                ),
                Text("East")
              ],
            ),
            Text("South")
          ],
        ),
      ),
    );
  }
}
