import 'dart:math';

import 'package:flutter/material.dart';

class TransformWidget extends StatefulWidget {
  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform Example"),
      ),
      body: Align(
          alignment: Alignment.center,
          child: Container(
            color: Colors.lightBlueAccent[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Transform.rotate(
                    angle: pi / 4,
                    child: Icon(
                      Icons.navigation,
                      size: 50,
                    )),
                Transform.scale(
                  scale: 1.5,
                  child: Icon(
                    Icons.navigation,
                    size: 50,
                  ),
                ),
                Transform.translate(
                  offset: Offset(20, 20),
                  child: Icon(
                    Icons.network_cell,
                    size: 50,
                  ),
                ),
                Transform(
                  transform: Matrix4.skewX(0.5),
                  child: Icon(Icons.note, size: 50,),
                ),
                Transform(
                  transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.01)
                  ..rotateX(1.1),
                  alignment: FractionalOffset.center,
                  child: Icon(Icons.notifications_active, size: 50,),
                )
              ],
            ),
          )),
    );
  }
}
