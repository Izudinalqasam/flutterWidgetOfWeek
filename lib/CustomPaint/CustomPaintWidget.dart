import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Paint Example"),),
      body: Center(
        child: CustomPaint(
          painter: MyCustomPainter(),
          size: Size(100, 100),
        ),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(size.width / 2 + 15, size.height / 2 + 10), size.width / 2, Paint()..color = Colors.lightBlue);
    canvas.drawRect(Rect.fromLTRB(0, 0, 10, 120), Paint()..color = Colors.amber);
    canvas.drawRect(Rect.fromLTRB(120, 0, 130, 120), Paint()..color = Colors.amber);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
  
}