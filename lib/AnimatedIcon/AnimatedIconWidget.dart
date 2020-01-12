import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconWidgetState createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedIcon Example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Click Next or Previous Buttoon to look the animated icon"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      controller.reverse();
                    },
                    icon: Icon(
                      Icons.skip_previous,
                    )),
                AnimatedIcon(
                  size: 200,
                  icon: AnimatedIcons.play_pause,
                  progress: controller,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: () {
                    controller.forward();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
