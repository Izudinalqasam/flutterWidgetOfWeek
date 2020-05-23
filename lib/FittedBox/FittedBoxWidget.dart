import 'package:flutter/material.dart';

// Fittedbox can be used to arrange box  within another box, it can handle overlapping the image inside another box
// if this the Row widget is not encapsulated by FittedBox, the widget will overflow the screen so the last widget
// in the order will not be shown 
class FittedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FittedBox Example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            FittedBox(
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image.asset("assets/cien.jpg"),
                  ),
                  Container(
                    child: Text(
                      "This is a widget example to clearly understand how the fittedbox widget works",
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
              fit: BoxFit.none,
              alignment: Alignment.centerLeft,
            )
          ],
        ),
      ),
    );
  }
}
