import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mWidth = MediaQuery.of(context).size.width;
    var mHeight = MediaQuery.of(context).size.height;
    var mOrientation = MediaQuery.of(context).orientation;
    var mTextScaleInDevice = MediaQuery.of(context).textScaleFactor;
    var notchInset = MediaQuery.of(context).padding; // it can be used to avoid notch in the phone
    var isAnimationActive = MediaQuery.of(context).disableAnimations;
    var screenContrastLevel = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery Example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          padding: notchInset,
          width: mWidth / 1.2,
          height: mHeight / 2,
          color: Colors.lightBlue,
          child: Center(
              child: Text(
            "the orientation of this device is $mOrientation",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
