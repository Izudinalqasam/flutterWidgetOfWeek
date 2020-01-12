import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PlaceHolder Example"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Placeholder(
              fallbackHeight: 200,
              fallbackWidth: 200,
              color: Colors.amber,
              strokeWidth: 3,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 100, width: 100),
              child: Placeholder(
                strokeWidth: 6,
                fallbackWidth: 10,
                fallbackHeight: 100,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
