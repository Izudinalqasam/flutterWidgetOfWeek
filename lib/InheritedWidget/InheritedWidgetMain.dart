import 'package:flutter/material.dart';
import 'package:flutter_widget_week/InheritedWidget/InheritedWidgetModel.dart';
import 'package:flutter_widget_week/InheritedWidget/InheritedWidgetSecond.dart';


class ColorOneWidget extends StatefulWidget {
  @override
  _ColorOneWidgetState createState() => _ColorOneWidgetState();
}

class _ColorOneWidgetState extends State<ColorOneWidget> {
  void openSecondPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ColorTwoWidget()));
  }

  @override
  Widget build(BuildContext context) {
    final container = MyAncestor.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            openSecondPage(context);
          },
          child: Container(
            height: 50,
            width: 50,
            color: container.currentColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
