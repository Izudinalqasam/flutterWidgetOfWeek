import 'package:flutter/material.dart';

// this widget is used to wrap widget, if the widget pass through the border,
// it will be placed the below or right of the firs row widget. 
// it is useful because we must not arrange the widget or wrap it with another widget
class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          spacing: 10,
          children: <Widget>[
            RaisedButton(
              child: Text("Button 1"),
              onPressed: () {},
            ), 
            RaisedButton(
              child: Text("Button 2"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Button 3"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Button 4"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Button 5"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Button 6"),
              onPressed: () {},
            ),
            RaisedButton(
              child: Text("Button 7"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}