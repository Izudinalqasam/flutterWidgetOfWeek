import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double currentOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedOpacity Example"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: currentOpacity,
              curve: Curves.bounceIn,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  currentOpacity = currentOpacity == 0.0 ? 1.0 : 00;
                });
              },
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 5),
                borderRadius: BorderRadius.circular(15)
              ),
              hoverColor: Colors.red,
              color: Colors.amber,
              child: Text("Change Opacity"),
            )
          ],
        ),
      ),
    );
  }
}
