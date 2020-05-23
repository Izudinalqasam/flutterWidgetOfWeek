import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  bool isAccepted = false;
  Color acceptedColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Draggable Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Draggable(
              data: Color(0xFFE57373),
              child: boxWidget(Colors.lightBlue, text: "12"),
              childWhenDragging: boxWidget(Colors.grey),
              feedback: boxWidget(Colors.lightBlue, radius: 15, text: "12"),
            ),
            DragTarget(
              builder: (context, List<Color> candidates, rejects) {
                print("the value is ${candidates.length.toString()}");
                return isAccepted
                    ? boxWidget(acceptedColor)
                    : dashBoxWidget();
              },
              onWillAccept: (value) => true,
              onAccept: (color) {
                print("onAccept is called");
                setState(() {
                  isAccepted = true;
                  acceptedColor = color;
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Widget boxWidget(Color color, {double radius = 0, String text = ""}) {
    return Container(
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: color),
    );
  }

  Widget dashBoxWidget() {
    return DottedBorder(
      color: Colors.grey,
      strokeWidth: 1,
      child: Container(width: 100, height: 100),
    );
  }
}
