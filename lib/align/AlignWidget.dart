import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Align Example"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Align(
            alignment: Alignment.bottomRight,
            child: Text("Bottom Right"),
          ),
          Align(
            alignment: Alignment(-0.75, -0.75),
            child: Text("Custom align -0.75"),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Text("Custom Align 0.0"),
          ),
          Align(
            alignment: Alignment(1.0, 0.5),
            child: Text("Custom Align x = 1.0, y = 0.5"),
          ),
          Align(
            alignment: Alignment(0.6, -0.8),
            child: Text("Custom Align x = 0.6, y = -0.8"),
          ),
          Align(
            alignment: Alignment(-0.40, 0.90),
            child: Text("Cutoom Align x = -0.40, y = 0.9"),
          )
        ],
      ),
    );
  }
}