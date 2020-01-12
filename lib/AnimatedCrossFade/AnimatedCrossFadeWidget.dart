import 'package:flutter/material.dart';


// use the layout builder if you want to animate between two widget 
// if you have same widget size you don't need layout builde, you can omit it.
class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool shouldWelcomeUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  shouldWelcomeUser = true;
                });
              },
              child: Text("Show First"),
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedCrossFade(
              crossFadeState: shouldWelcomeUser
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 800),
              firstChild: widgetHello(),
              secondChild: widgetGoodBye(),
              firstCurve: Curves.easeOut,
              secondCurve: Curves.easeIn,
              sizeCurve: Curves.bounceOut,
              layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
                return animatedDifferentSize(topChildKey, topChild, bottomChildKey, bottomChild);
              },
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  shouldWelcomeUser = false;
                });
              },
              child: Text("Show Second"),
            )
          ],
        ),
      ),
    );
  }

  Widget animatedDifferentSize(Key topKey, Widget topWidget, Key bottomKey, Widget bottomWidget){
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
          key: bottomKey,
          top: 0,
          child: bottomWidget,
        ),
        Positioned(
          key: topKey,
          child: topWidget,
        )
      ],
    );
  }

  Widget widgetHello() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
    );
  }

  Widget widgetGoodBye() {
    return Container(
      width: 100,
      height: 100,
      color: Colors.lightBlue,
    );
  }
}
