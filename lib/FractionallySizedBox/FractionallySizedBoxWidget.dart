import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                  alignment: Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.7,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("Button width 70%"),
                    ),
                  ),
                )),
            Flexible(
              flex: 5,
              child: FractionallySizedBox(
                heightFactor: 0.2, // this widget acts like sizedbox or spacer
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.pinkAccent,
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Button width 50%"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
