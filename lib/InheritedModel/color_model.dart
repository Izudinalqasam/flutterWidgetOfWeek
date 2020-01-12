import 'package:flutter/material.dart';
import 'package:flutter_widget_week/InheritedModel/color_type.dart';
import 'package:flutter_widget_week/InheritedWidget/InheritedWidgetModel.dart';

class ColorModelContainer extends StatefulWidget {
  final Widget child;

  ColorModelContainer({this.child});

  @override
  ColorModelContainerState createState() => ColorModelContainerState();
}

class ColorModelContainerState extends State<ColorModelContainer> {
  Color color;
  Color colorSecond;

  void updateColor(Color color) {
    this.color = color ?? Colors.black;
  }

  void updateAnotherColor(Color color){
    this.colorSecond = color ?? Colors.black;
  }

  @override
  Widget build(BuildContext context) {

    return ColorModel(
      dataRed: this,
      dataBlue: this,
      child: widget.child,
    );
  }
}

class ColorModel extends InheritedModel<COLOR_TYPE> {
  final ColorModelContainerState dataRed;
  final ColorModelContainerState dataBlue;

  ColorModel(
      {@required this.dataRed, @required this.dataBlue, @required Widget child})
      : super(child: child);

  @override
  bool updateShouldNotify(ColorModel oldWidget) {
    return dataRed != oldWidget.dataRed || dataBlue != oldWidget.dataBlue;
  }

  @override
  bool updateShouldNotifyDependent(
      ColorModel oldWidget, Set<COLOR_TYPE> dependencies) {
    return (dependencies.contains(COLOR_TYPE.RED) &&
            oldWidget.dataRed != dataRed) ||
        (dependencies.contains(COLOR_TYPE.BLUE) &&
            oldWidget.dataBlue != dataBlue);
  }

  static ColorModel of(BuildContext context, {COLOR_TYPE aspect}) =>
      InheritedModel.inheritFrom<ColorModel>(context, aspect: aspect);
}