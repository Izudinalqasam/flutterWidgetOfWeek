import 'package:flutter/material.dart';

class ListViewStatic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Static Example")),
      body: ListView(
        scrollDirection: Axis.vertical,
        reverse: false,
        addAutomaticKeepAlives: false, // to  allow items to be gerbage collected when off-screen
        cacheExtent: 1.0, // to have a bit more control over what off-screen means
        // physics: NeverScrollableScrollPhysics(),  // disabling scroll in the list
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.amber,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            color: Colors.orange,
          ),
          Container(
            height: 200,
            color: Colors.purple,
          ),
          Container(
            height: 200,
            color: Colors.black,
          ),
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.brown,
          )
        ],
      ),
    );
  }
}