import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int indexWidget = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IndexedStack Example"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IndexedStack(
              index: indexWidget,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
                FlutterLogo(
                  size: 100,
                  curve: Curves.bounceIn,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){
                    setStactIndex(0);
                  },
                  child: Text("Container"),
                ),
                RaisedButton(
                  onPressed: () {
                    setStactIndex(1);
                  },
                  child: Text("Flutter Logo"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void setStactIndex(int pos){
    setState(() {
      indexWidget = pos;
    });
  }
}
