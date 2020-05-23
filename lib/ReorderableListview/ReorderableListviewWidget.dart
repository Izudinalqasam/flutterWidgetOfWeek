import 'package:flutter/material.dart';

// to reorder list view, you can long press the item then move the item
class ReorderableListViewWidget extends StatefulWidget {
  @override
  _ReorderableListViewWidgetState createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  List<String> myItem = ["satu", "dua", "tiga", "empat", "lima"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ReorderableListView Example"),
      ),
      body: Center(
        child: ReorderableListView(
            onReorder: (oldPos, newPos) {
              setState(() {
                var tempItem = myItem[oldPos];
                myItem.removeAt(oldPos);
                myItem.insert(newPos, tempItem);
              });
            },
            header: Container(
              margin: EdgeInsets.all(30),
                          child: Text(
                "This is the ReorderListview",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            children: [
              for (final item in myItem)
                ListTile(
                  key: ValueKey(item),
                  title: Container(
                      height: 100,
                      padding: EdgeInsets.all(10),
                      color: Colors.lightBlue,
                      child: Text(
                        "Ini list ke $item",
                        style: TextStyle(color: Colors.white),
                      )),
                )
            ]),
      ),
    );
  }
}
