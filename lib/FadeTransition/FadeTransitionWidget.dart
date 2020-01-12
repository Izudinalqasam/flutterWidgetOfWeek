import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2),
        reverseDuration: Duration(seconds: 1));

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FadeTransition(
                  opacity: _animation,
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Material(
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("show animated transition"),
                onPressed: () {
                  _controller.forward();
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text("hide animated transation"),
                onPressed: () {
                  _controller.reverse();
                },
              )
            ]),
      ),
    );
  }
}
