import 'package:flutter/material.dart';

class StackWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Example 2"),),
      body: Stack(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            color: Colors.lightBlue,
          ),
          Positioned(
            bottom: -50,
            right: -50,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          )
        ],
        overflow: Overflow.visible, // Overflow.visible will show the overflow box, but Overflow.visible will crop the overflow
      ),
    );
  }
}