import 'package:flutter/material.dart';

class MaterialAlertDialogWidget extends StatefulWidget {
  @override
  _MaterialAlertDialogWidgetState createState() =>
      _MaterialAlertDialogWidgetState();
}

class _MaterialAlertDialogWidgetState extends State<MaterialAlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Alert Dialog Example"),
      ),
      body: Align(
        child: RaisedButton(
          child: Text("Show Alert Dialog"),
          onPressed: () {
            _showDialogMaterial(context);
          },
        ),
      ),
    );
  }

  void _showDialogMaterial(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return AlertDialog(
            title: Text(
              "Accept",
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              "Do you accept this license?",
              style: TextStyle(color: Colors.white),
            ),
            elevation: 24.0,
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.lightBlue,
            actions: <Widget>[
              FlatButton(
                child: Text(
                  "No",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
}
