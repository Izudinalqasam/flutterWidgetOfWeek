import 'package:flutter/material.dart';

// if you want to use separator in listView using ListView.separated
// if you only want to add item dynamically without add separator, using ListView.builder
// if you want to use custom listview, you can use ListView.custom
class ListViewDynamic extends StatefulWidget {
  @override
  _ListViewDynamicState createState() => _ListViewDynamicState();
}

class _ListViewDynamicState extends State<ListViewDynamic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Dynamic Example"),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (_, index) => Divider(),
        itemBuilder: (_, index) => Container(
            height: 100,
            color: Colors.amber,
            alignment: Alignment.center,
            child: Text(
              "Item $index",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
