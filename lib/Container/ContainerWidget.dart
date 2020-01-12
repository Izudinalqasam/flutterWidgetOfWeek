import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example"),
      ),
      body: Align(
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          decoration:
              BoxDecoration(shape: BoxShape.rectangle, color: Colors.lightBlue),
          child: Text(
            "Container Example",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
            textAlign: TextAlign.center,
          ),
          constraints: BoxConstraints.tightForFinite(width: 200),
          transform: Matrix4.rotationZ(0.25),
        ),
      ),
    );
  }
}
