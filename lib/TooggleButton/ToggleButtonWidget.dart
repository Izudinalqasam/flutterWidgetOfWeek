import 'package:flutter/material.dart';

// if you use keyboard for you can use focuus color, fokus Nodes, hover color
class ToggleButtonWidget extends StatefulWidget {
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToggleButton Example"),),
      body: Align(
        child: ToggleButtons(
          children: <Widget>[
            Icon(Icons.local_cafe),
            Icon(Icons.fastfood),
            Icon(Icons.cake)
          ],
          isSelected: _selections,
          color: Colors.green, // color for icon
          selectedColor: Colors.red, // color for selected icon
          fillColor: Colors.grey, // color for background of icon
          renderBorder: true,  // to remove border between icon toggle, set it false
          borderRadius: BorderRadius.circular(15),
          borderWidth: 3,
          borderColor: Colors.orange,
          selectedBorderColor: Colors.deepOrange,
          highlightColor: Colors.yellow,
          splashColor: Colors.purple,
          onPressed: (index) {
            setState(() {
              _selections[index] = !_selections[index];
            });
          },
        )
      ),
    );
  }
}