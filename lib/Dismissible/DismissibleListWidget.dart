import 'package:flutter/material.dart';

class DismissibleListWidget extends StatefulWidget {
  @override
  _DismissibleListWidgetState createState() => _DismissibleListWidgetState();
}

class _DismissibleListWidgetState extends State<DismissibleListWidget> {
  List<Widget> itemList = [
    Text("List Item 1"),
    Text("List Item 2"),
    Text("List Item 3"),
    Text("List Item 4"),
    Text("List Item 5"),
    Text("List Item 6")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible List Example"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, pos) {
            return Dismissible(
              key: ValueKey("list_dismissable"),
              child:
                  Container(margin: EdgeInsets.all(20), child: itemList[pos]),
              background: Container(
                color: Colors.amber,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              onDismissed: (direction) {
                itemList.removeAt(pos);
              },
            );
          },
        ),
      ),
    );
  }
}
