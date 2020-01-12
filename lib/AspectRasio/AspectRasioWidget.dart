import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AspectRation Example"),
      ),
      body: Flex(
        children: <Widget>[
          Expanded(
            child: Align(
              child: AspectRatio(
                aspectRatio: 4 / 2,
                child: Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
          ),
        ], direction: Axis.horizontal,
      ),
    );
  }
}
