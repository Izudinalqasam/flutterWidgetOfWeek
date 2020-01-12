import 'package:flutter/material.dart';


// This widget is used when you need animation but there is no one built-in implicit animation widget
class TweenAnimationBuilderWidget extends StatefulWidget {
  @override
  _TweenAnimationBuilderWidgetState createState() => _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState extends State<TweenAnimationBuilderWidget> {
  Color _firstColor = Colors.red;
  Color _secondColor = Colors.amber;
  Color _colorValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _colorValue = _secondColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TweenAnimationBuilder Example"),),
      body: Align(
        child: TweenAnimationBuilder<Color>(
          duration: Duration(seconds: 1),
          tween: ColorTween(begin: Colors.white, end: _colorValue),
          curve: Curves.bounceInOut,
          child: Image.asset("assets/dart_dash.png"), // set the widget as a child so that flutter will not redraw the entire tree during animation
          builder: (context, value, widget){
            return ColorFiltered(
              child: widget,
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
          onEnd: () {
             setState(() {
               print("Looping color");
              //  _colorValue = Colors.green; // if you set like this it will loop twice and stop
               _colorValue = (_colorValue == _secondColor) ? _firstColor : _secondColor; // it will iterate infinitely
             });
          },
        ),
      ),
    );
  }
}