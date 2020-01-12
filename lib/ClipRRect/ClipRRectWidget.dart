import 'package:flutter/material.dart';

// this widget is used to shape
class ClipRRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(25),
                  child: Image(
                    image: AssetImage("assets/cien.jpg"),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(20),
                child: ClipOval(
                  clipBehavior: Clip.hardEdge,
                  child: Image(
                    image: AssetImage("assets/cien.jpg"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
