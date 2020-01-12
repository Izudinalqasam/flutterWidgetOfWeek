import 'package:flutter/material.dart';

// the limitedBox doesn't work if the parent limit the heigh and widht itself, 
// so don't wrap your limitedbox with parent which has declared its own width and height
// limitedBox is useful if you use it in listview
class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox Example"),
      ),
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            LimitedBox(
              maxHeight: 100,
              child: Container(
                margin: EdgeInsets.all(5),
                color: Colors.amber,
              ),
            )
        ],
      ),
    );
  }
}
