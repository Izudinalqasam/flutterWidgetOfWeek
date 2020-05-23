import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SelectableText Example"),
      ),
      body: Align(
        child: Container(
          margin: EdgeInsets.all(10),
                  child: SelectableText(
            'My Selectable Text is a text which can be selected by user through long press on the text, then the popup will appear and you can choose one of the menus shown by the popup option',
            style: TextStyle(color: Colors.blue),
            textAlign: TextAlign.justify,
            showCursor: true,
            cursorWidth: 3,
            cursorColor: Colors.black,
            cursorRadius: Radius.circular(5),
            toolbarOptions: ToolbarOptions(copy: true, cut: true, selectAll: true),
            maxLines: 2,  // max lines 
            scrollPhysics: ClampingScrollPhysics(), // this will make line to be able to scroll
            onTap: () {
              print("Selectable Text Clicked");
            },
          ),
        ),
      ),
    );
  }
}
