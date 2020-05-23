import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  _AnimatedContainerWidgetState createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  Color containerColor = Colors.red;
  double widhtContainer = 200;
  double heightContainer = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                width: widhtContainer,
                height: heightContainer,
                duration: Duration(seconds: 1),
                curve: Curves.bounceInOut,
                color: containerColor,
              ),
            ),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text("Set Color Red"),
              onPressed: () {
                setState(() {
                  containerColor = Colors.red;
                  widhtContainer = 100;
                });
              },
            ),
            SizedBox(height: 10,),
            RaisedButton(
              child: Text("Set Color Amber"),
              onPressed: () {
                setState(() {
                  containerColor = Colors.amber;
                  widhtContainer = 200;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
