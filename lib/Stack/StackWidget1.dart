import 'package:flutter/material.dart';

class StackWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Example 1"),),
      body: Stack(
        fit: StackFit.loose,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
          Container(
            width: 130,
            height: 130,
            color: Colors.green,
          ),
          Container(
            width: 110,
            height: 110,
            color: Colors.yellow,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.blue,
          ),
          Container(
            width: 70,
            height: 70,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}