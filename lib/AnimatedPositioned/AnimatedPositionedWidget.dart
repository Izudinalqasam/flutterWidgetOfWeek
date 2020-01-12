import 'package:flutter/material.dart';

// this widget is only work in the stack widget
// this widget work is same with Positioned Widget
class AnimatedPositionedWidget extends StatefulWidget {
  @override
  _AnimatedPositionedWidgetState createState() =>
      _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool isShowMessage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPositioned Example"),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  isShowMessage = !isShowMessage;
                });
              },
              child: Text("Click to show/hide widget"),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Center(
                          child: Text("This is the secret word", textAlign: TextAlign.center,),
                        ),
                      )),
                  AnimatedPositioned(
                    duration: Duration(seconds: 1),
                    bottom: isShowMessage ? 100 : 10,
                    right: 10,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: 100,
                      height: isShowMessage ? 50 : 100,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
