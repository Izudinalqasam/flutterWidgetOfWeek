import 'package:flutter/material.dart';

class CustomClipPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Custom Clip path"),),
      body: Align(
        child: ClipPath(
          clipper: MyCustomClipPath(),
          child: Container(
            color: Colors.lightBlueAccent.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipPath extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
   Path path = Path();
   path.lineTo(0, size.height / 4.25);
   
   var firstControlPoint = Offset(size.width / 4, size.height / 3);
   var firstEndPoint = Offset(size.width / 2, size.height / 3 - 60);
   var secondControlPoint = Offset(size.width - (size.width / 4), size.height / 4 -65);
   var secondEndPoint = Offset(size.width, size.height / 3 - 40);

   path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
   path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

   path.lineTo(size.width, size.height / 3);
   path.lineTo(size.width, 0);
   path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
  
}