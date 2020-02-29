import 'package:flutter/material.dart';


// you can apply shader to one or more widget, we can apply shader gradient to widget, shader images to widget
class ShaderMaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShaderMask Example"),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rect) {
            return LinearGradient(
                    colors: [Colors.amber, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.mirror)
                .createShader(rect);
          },
          child: Container(
            width: 100,
            height: 100,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
