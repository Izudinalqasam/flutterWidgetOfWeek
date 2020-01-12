import 'package:flutter/material.dart';

// tooltip can be shown by longly pressing the widget
class ToolipsWidget extends StatefulWidget {
  @override
  _ToolipsWidgetState createState() => _ToolipsWidgetState();
}

class _ToolipsWidgetState extends State<ToolipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Tooltip(
              message: 'Image',
              height: 15,
              verticalOffset: 168,
              child: Image.asset("assets/cien.jpg")),
          Tooltip(
            height: 50,
            verticalOffset: 60,
            message: 'box container',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
          IconButton(
            iconSize: 50,
            tooltip: 'dont touch Item',
            color: Colors.red,
            icon: Icon(Icons.remove_circle),
            onPressed: () {},
          ),
          Tooltip(
              height: 25,
              message: "Toolip of text",
              child: Text(
                "hover this text",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
