import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColorFiltered Example"),
      ),
      body: Align(
        child: Column(
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.modulate),
              child: Image.asset("assets/dart_dash.png"),
            ),
            SizedBox(height: 20,),
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.modulate),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Container 1", style: TextStyle(color: Colors.white, fontSize: 20),),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text("Container 2", style: TextStyle(color: Colors.white, fontSize: 20),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
