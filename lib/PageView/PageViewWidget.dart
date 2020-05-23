import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  PageController _pageController = PageController(initialPage: 0,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Example"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: PageView(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              color: Colors.amber,
              child: Center(
                child: Text(
                  "This is page 1",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                  child: Text(
                "This is page 2",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            Container(
              color: Colors.lightBlue,
              child: Center(
                  child: Text(
                "This is page 3",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}
