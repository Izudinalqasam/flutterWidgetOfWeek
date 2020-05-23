import 'package:flutter/material.dart';

class HeroWidgetSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Example Detail Page"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Hero(tag: 'cien', child: Image.asset("assets/cien.jpg")),
      ),
    );
  }
}
