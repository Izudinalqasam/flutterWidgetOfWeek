import 'package:flutter/material.dart';

class ColorContainer extends StatefulWidget {
  final Widget widgetChild;
  final Color color;

  ColorContainer({@required this.widgetChild, this.color});

  @override
  ColorContainerState createState() => ColorContainerState();
}

class ColorContainerState extends State<ColorContainer> {
  Color currentColor;

  void updateColor(Color color) {
    currentColor = color != null ? color : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return MyAncestor(
      data: this,
      child: widget.widgetChild,
    );
  }
}

class MyAncestor extends InheritedWidget {
  final ColorContainerState data;

  MyAncestor({this.data, @required Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(MyAncestor oldWidget) {
    return data != oldWidget.data;
  }

  static ColorContainerState of(BuildContext context) =>
      (context.dependOnInheritedWidgetOfExactType<MyAncestor>()
              as MyAncestor)
          .data;
}
