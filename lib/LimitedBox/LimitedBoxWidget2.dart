import 'package:flutter/material.dart';

// use LimitedBox if the parent doesn't have constraint or if it is unBounded
// this limitedBox will be used by its child as the default size of its children
class LimitedBoxWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LimitedBox 2 Example"),
      ),
      body: UnconstrainedBox(
        child: LimitedBox(
          maxHeight: 100,
          maxWidth: 200,
          child: Container(
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
