import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile Example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: Icon(
                Icons.add_a_photo,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.add_comment,
                color: Colors.white,
              ),
              title: Text(
                "Widget of the week",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "#54 \n ListTile",
                style: TextStyle(color: Colors.white),
              ),
              isThreeLine: true,
              dense: true,
              enabled: true,
              selected: true,
              onTap: () {
                print("ListTile Clicked");
              },
            ),
          )
        ],
      ),
    );
  }
}
