import 'package:flutter/material.dart';
import 'package:flutter_widget_week/Hero/HeroWidgetSecondPage.dart';

// Using hero widget will make your widget animate differently from the default
class HeroWidgetFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Example Main Page"),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HeroWidgetSecondPage()));
        },
        child: Container(
          width: 200,
          height: 150,
          margin: EdgeInsets.all(20),
          child: Hero(tag: 'cien', child: Image.asset("assets/cien.jpg")),
        ),
      ),
    );
  }
}
