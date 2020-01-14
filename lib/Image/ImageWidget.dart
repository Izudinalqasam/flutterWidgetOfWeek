import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class ImageWidget extends StatelessWidget {
  Future<String> _localPath() async {
    var directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(title: Text("Image Example")),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Image.asset("assets/dart_dash.png"),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                  "https://img.favpng.com/14/21/22/dart-programming-language-flutter-object-oriented-programming-png-favpng-riHaX64gXj4juQ8nZjn9im0C8.jpg",
                  width: 400,
                  height: 300,
                  fit: BoxFit.scaleDown,
                  color: Colors.grey,
                  colorBlendMode: BlendMode.darken,
                  semanticLabel: "Dash Mascot",
                  
                  loadingBuilder: (context, widget, progress) {
                    return progress == null
                        ? widget
                        : LinearProgressIndicator(
                            value: progress.cumulativeBytesLoaded.toDouble(),
                          );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
