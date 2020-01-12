import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RichText Example"),),
      body: RichText(
        text: TextSpan(
          style:TextStyle(fontSize: 30, color: Colors.black),
          children: [
            TextSpan(
              text: 'it is a link ',
              recognizer: TapGestureRecognizer()..onTap = () {
                launch('https://www.google.com'); // the link has to full path
              }
            ),
            TextSpan(
              text: 'all ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)
            ),
            TextSpan(
              text: ' widget',
              style: TextStyle(background: Paint()..color = Colors.amber..style = PaintingStyle.stroke..strokeWidth = 5)
            )
          ]  
        ),
      ),
    );
  }
}