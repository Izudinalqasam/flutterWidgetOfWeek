import 'package:flutter/material.dart';

// this widget is used as placeholder to be shown to user while the actual image is loading from the server

class FadeInImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FadeIn Image Example"),),
      body: Align(
        alignment: Alignment.center,
        child: FadeInImage.assetNetwork(
          fadeInDuration: Duration(seconds: 1),
          fadeInCurve: Curves.bounceIn,
          height: 200,
          width: 200,
          placeholder: 'assets/cien.jpg',
          image: "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
        ),
      ),
    );
  }
}