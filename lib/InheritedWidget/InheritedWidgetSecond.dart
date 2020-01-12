import 'package:flutter/material.dart';
import 'package:flutter_widget_week/InheritedWidget/InheritedWidgetModel.dart';

class ColorTwoWidget extends StatefulWidget {
  @override
  _ColorTwoWidgetState createState() => _ColorTwoWidgetState();
}

class _ColorTwoWidgetState extends State<ColorTwoWidget> {
  @override
  Widget build(BuildContext context) {
    final container = MyAncestor.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  container.updateColor(Colors.purple);
                });
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: container.currentColor == Colors.purple
                      ? Border.all(color: Colors.black, width: 5)
                      : Border.all(width: 0),
                  shape: BoxShape.circle,
                  color: Colors.purple,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  container.updateColor(Colors.red);
                });
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: container.currentColor == Colors.red
                        ? Border.all(color: Colors.black, width: 5)
                        : Border.all(width: 0),
                    shape: BoxShape.circle,
                    color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
