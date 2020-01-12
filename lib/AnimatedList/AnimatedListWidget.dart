import 'package:flutter/material.dart';

class AnimatedListWidget extends StatefulWidget {
  @override
  _AnimatedListWidgetState createState() => _AnimatedListWidgetState();
}

class _AnimatedListWidgetState extends State<AnimatedListWidget> {
  final _myListKey = GlobalKey<AnimatedListState>();
  List<String> myData = ["Superman", "Batman", "Samson"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedList Example"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              myData.add("Captain Marvel");
              _myListKey.currentState.insertItem(3);
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.delete),
            onPressed: () {
              myData.removeAt(3);
              _myListKey.currentState.removeItem(
                  3,
                  (context, animation) => SizeTransition(
                        sizeFactor: animation,
                        axis: Axis.horizontal,
                        child: Container(
                          width: 50,
                          height: 50,
                        ),
                      ));
            },
          )
        ],
      ),
      body: Center(
        child: AnimatedList(
          key: _myListKey,
          initialItemCount: myData.length,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              sizeFactor: animation,
              axis: Axis.vertical,
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Text("This is ${myData[index]} index- $index"),
              ),
            );
          },
        ),
      ),
    );
  }
}
