import 'package:flutter/material.dart';

// this widget is useful if you want to tweak the height and width
// to best match your design
class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox Example"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 70,
                maxWidth: 40
              ),
              child: Container(
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 40,),
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 100,
                minWidth: 150
              ),
              child: Container(
                width: 10,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
