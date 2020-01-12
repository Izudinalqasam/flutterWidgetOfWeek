import 'package:flutter/material.dart';


// this widget is usefull to hide and show the widget either using animation or not.
// 
class OpacityWidget extends StatefulWidget {
  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  double visibility = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Widget Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text("Button 1"),
              onPressed: () {},
            ),
            Opacity(
              opacity: visibility,
              child: RaisedButton(
                child: Text("Button 2"),
                onPressed: () {},
              ),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: visibility,
              child: RaisedButton(
                child: Text("Button 3"),
                onPressed: () {},
              ),
            ),
            RaisedButton(
              child: Text("Hide Button 2 and 3"),
              onPressed: () {
                setState(() {
                  visibility = 0.0;
                });
              },
            ),
            RaisedButton(
              child: Text("Show Button 2 and 3"),
              onPressed: () {
                setState(() {
                  visibility = 1.0;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
