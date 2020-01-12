import 'package:flutter/material.dart';
import 'package:flutter_widget_week/InheritedModel/color_model.dart';
import 'package:flutter_widget_week/InheritedModel/color_type.dart';

class MainInheritedModel extends StatefulWidget {
  @override
  _MainInheritedModelState createState() => _MainInheritedModelState();
}

class _MainInheritedModelState extends State<MainInheritedModel> {
  @override
  Widget build(BuildContext context) {
    final model = ColorModel.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("This is the inherited model example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FirstChildModel(),
            SecondChildModel(),
            RaisedButton(
              child: Text("Set Red Container"),
              onPressed: () {
                setState(() {
                  model.dataRed.updateColor(model.dataRed.color == Colors.red ? Colors.amber : Colors.red);
                });
              },
            ),
            RaisedButton(
              child: Text("Set Blue Container"),
              onPressed: () {
                setState(() {
                   model.dataBlue.updateAnotherColor(model.dataBlue.colorSecond == Colors.blue ? Colors.lightBlue : Colors.blue);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class FirstChildModel extends StatefulWidget {
  @override
  _FirstChildStateModel createState() => _FirstChildStateModel();
}

class _FirstChildStateModel extends State<FirstChildModel> {
  @override
  Widget build(BuildContext context) {
    final model = ColorModel.of(context, aspect: COLOR_TYPE.RED);
    return Container(
      width: 100,
      height: 100,
      color: model.dataRed.color,
    );
  }
}

class SecondChildModel extends StatefulWidget {
  @override
  _SecondChildModelState createState() => _SecondChildModelState();
}

class _SecondChildModelState extends State<SecondChildModel> {
  @override
  Widget build(BuildContext context) {
    final model = ColorModel.of(context, aspect: COLOR_TYPE.BLUE);
    return Container(
      width: 100,
      height: 100,
      color: model.dataBlue.colorSecond ?? Colors.black,
    );
  }
}
