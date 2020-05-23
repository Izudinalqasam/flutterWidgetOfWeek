import 'dart:math';

import 'package:flutter/material.dart';

//Floating is true, it will show the appbar if you scroll downwad
// Floating is false, it will show the appbar if you scroll the list until the first item

// pinned is true, it will keep appbar when scrolling

// usign SliverBuilder will create widget list lazyly. it is good for performance

class SliverAppBarWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.amber,
            expandedHeight: 200,
            title: Text('SliverAppBar'),
            floating: false,
            actions: <Widget>[Icon(Icons.settings)],
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                leading: Icon(Icons.adb),
                title: Text("Input List"),
              );
            }, childCount: 4),
          ),
          SliverGrid.count(
            crossAxisSpacing: 5,
            crossAxisCount: 4,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 5,
                  color: Colors.lightBlue,
                  onPressed: () {},
                  child: Text("Grid Button 1", style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 5,
                  color: Colors.purple,
                  onPressed: () {},
                  child: Text("Grid Button 1", style: TextStyle(color: Colors.white),),
                ),
              )
              ,Container(
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 5,
                  color: Colors.green,
                  onPressed: () {},
                  child: Text("Grid Button 1", style: TextStyle(color: Colors.white),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  elevation: 5,
                  color: Colors.brown,
                  onPressed: () {},
                  child: Text("Grid Button 1", style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, crossAxisSpacing: 10, mainAxisSpacing: 10),
            delegate: SliverChildBuilderDelegate(
                (context, index) => ClipRect(
                      child: Container(
                          padding: EdgeInsets.all(5),
                          width: 200,
                          height: 200,
                          color: Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0),
                          child: Text(
                            "Clip 1",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )),
                    ),
                childCount: 50),
          )
        ],
      ),
    );
  }
}
