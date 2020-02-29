import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatefulWidget {
  @override
  _DraggableScrollableSheetWidgetState createState() =>
      _DraggableScrollableSheetWidgetState();
}

class _DraggableScrollableSheetWidgetState
    extends State<DraggableScrollableSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggableScrollableSheet Example"),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 1.0,
        builder: (context, scrollController) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: Colors.grey),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      FlutterLogo(
                        size: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        height: 100,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue,
                        ),
                        child: Text(
                          "Flutter",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                      Text(
                        """Flutter is the progamming language which can be used to build multiplatform device from one code base, no briding. 
                          and flutter has hot reload and declarative UI pattern so you can customize the layout based on you want and your design""",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
