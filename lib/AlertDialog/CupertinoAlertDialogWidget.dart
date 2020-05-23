import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoAlertDialog Example"),
      ),
      body: Align(
        child: RaisedButton(
          onPressed: () {
            _showDialog(context);
          },
          child: Text("Show Cupertino Dialog"),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            title: Text("Accept\n"),
            content: Text("Are you sure to accept this license?"),
            insetAnimationCurve: Curves.bounceIn,
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("No"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Yes"),
              )
            ],
          );
        });
  }
}
