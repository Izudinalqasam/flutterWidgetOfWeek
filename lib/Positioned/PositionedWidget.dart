import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Positioned Example"),),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 25,
            left: 50,
            child: Text("Positioned 1"),
          ),
          Positioned(
            bottom: 20,
            right: 25,
            child: Text("Positioned 2"),
          ),
          Positioned(
            bottom: 50,
            right: 25,
            width: 175,
            height: 175,
            child: Image.asset('assets/cien.jpg'),
          ),
          Positioned.fill(
            child: Image.asset('assets/cien.jpg'),
          ),
          Positioned.directional(
            start: 20,
            bottom: 20,
            textDirection: TextDirection.ltr,
            child: Text("Postioned by directional"),
          )
        ],
      ),
    );
  }
}