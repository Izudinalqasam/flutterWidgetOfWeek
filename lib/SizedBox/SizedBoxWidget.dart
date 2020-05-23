import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SizedBox Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              width: 200,
              child: RaisedButton(
                onPressed: () {},
                child: Text("Button 1"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {},
                child: Text("Button width infinitely"),
              ),
            ),
            Container(
              height: 200,
              child: SizedBox.expand(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Button with SizedBox Expand"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}