import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  @override
  _AnimatedSwitcherWidgetState createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  bool isFront = true;
  Widget myDynamicWidget;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myDynamicWidget = Container(
      key: ValueKey(1),
      height: 50,
      width: 150,
      color: Colors.blue,
    );
  }

  void changeWidget() {
    setState(() {
      if (isFront) {
        myDynamicWidget = Container(
          key: ValueKey(1),
          height: 50,
          width: 150,
          color: Colors.blue,
        );
        isFront = !isFront;
      } else {
        myDynamicWidget = Container(
          key: ValueKey(2),
          height: 150,
          width: 50,
          color: Colors.lightBlue,
        );
        isFront = !isFront;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedSwitcher Example"),
      ),
      body: Align(
        child: AnimatedSwitcher(
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              child: child,
              scale: animation,
            );
          },
          duration: Duration(seconds: 1),
          child: myDynamicWidget,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeWidget();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
