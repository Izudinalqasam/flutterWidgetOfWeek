import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout Builder Example"),),
      body: LayoutBuilder(
        builder: (context, constraint) {
          // the phone has maxHeight 600<
          if (constraint.maxHeight < 600) {
            return oneColumn();
          } else {
            return twoColumn();
          }
        },
      ),
    );
  }

  Widget oneColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("Column 1")
          ],
        )
        ]
    );
  }

  Widget twoColumn() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Column(
        children: <Widget>[
          Text("Column 1")
        ],
      ),
      Column(
        children: <Widget>[
          Text("Column 2")
        ],
      )
    ],
  ); 
}
