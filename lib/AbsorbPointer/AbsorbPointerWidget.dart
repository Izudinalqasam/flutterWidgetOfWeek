import 'package:flutter/material.dart';
import 'package:flutter_widget_week/FittedBox/FittedBoxWidget.dart';

// use this widget to adjust wheter the widget is disable or not.
// using this you only encapsulate the entire widget with this and can enable and disable
//  absorbing: true -> disabling the widget
class AbsorbPointerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AbsorbPointer Example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: AbsorbPointer(
          absorbing: true,
          ignoringSemantics: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FittedBoxWidget()));
                },
                child: Text("My Button 1"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FittedBoxWidget()));
                },
                child: Text("My Button 2"),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FittedBoxWidget()));
                },
                child: Text("My Button 3"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
