import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  @override
  _AnimatedPaddingWidgetState createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedPadding Example"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                 paddingValue = paddingValue == 0 ? 50 : 0;
                });
              },
              child: Text("Click me to change the padding of the container"),
            ),
            AnimatedPadding(
              duration: Duration(milliseconds: 500),
              padding: EdgeInsets.all(paddingValue),
              child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
