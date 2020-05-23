import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  @override
  _CheckBoxListTileWidgetState createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amberAccent,
          child: CheckboxListTile(
              title: Text("Weekly update!"),
              secondary: Icon(Icons.beach_access),
              controlAffinity: ListTileControlAffinity.leading,
              value: isChecked,
              activeColor: Colors.blueAccent,
              checkColor: Colors.black,
              onChanged: (newValue) {
                setState(() {
                  isChecked = newValue;
                });
              }),
        ),
      ),
    );
  }
}
