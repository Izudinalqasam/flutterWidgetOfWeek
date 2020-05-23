import 'package:flutter/material.dart';

// this widget will render your item as if it is placed on a cylinder in 3D
// as if the user is turning a wheel
// it is one of the awesome ui you can implement in your project
class ListWheelScrollViewWidget extends StatefulWidget {
  @override
  _ListWheelScrollViewWidgetState createState() =>
      _ListWheelScrollViewWidgetState();
}

class _ListWheelScrollViewWidgetState extends State<ListWheelScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListWheelScrollView Example"),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
        child: ListWheelScrollView(
            itemExtent: 102,
            diameterRatio: 2.5,
            offAxisFraction: 0.5,
            magnification: 1.5,
            useMagnifier: true,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amber,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.lightBlueAccent,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.greenAccent,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.deepOrange,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.purple,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.yellowAccent,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.cyan,
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.pink,
              )
            ]),
      ),
    );
  }
}
