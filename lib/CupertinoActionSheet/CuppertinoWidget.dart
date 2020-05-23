import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Example"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Click Me"),
              onPressed: () {
                waitingActionCupertino(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void waitingActionCupertino(BuildContext context) async {
    var thing = await showCupertinoModalPopup(
        context: context, builder: (context) => myCustomCupertino());

        print(thing);
  }

  Widget myCustomCupertino() => Align(
        alignment: Alignment.bottomCenter,
        child: CupertinoActionSheet(
          title: Text('Things'),
          message: Text('A short list of things to do'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('Good Thing'),
              onPressed: () => {},
              isDefaultAction: true,
            ),
            CupertinoActionSheetAction(
              child: Text("Bad Thing"),
              onPressed: () {},
              isDestructiveAction: true,
            )
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text('Cancel'),
            onPressed: () {},
          ),
        ),
      );
}
