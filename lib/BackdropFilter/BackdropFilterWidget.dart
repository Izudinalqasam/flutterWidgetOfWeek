import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BackdropFilter Example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset("assets/cien.jpg", width: MediaQuery.of(context).size.width, height: 300,),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 6),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/cien.jpg",
              width: 300,
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
