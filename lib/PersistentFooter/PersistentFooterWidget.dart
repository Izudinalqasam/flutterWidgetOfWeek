import 'package:flutter/material.dart';

class PersistentFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PersistentFooter Example"),),
      persistentFooterButtons: <Widget>[
        Icon(Icons.apps, size: 40,),
        Icon(Icons.add, size: 40,),
        Icon(Icons.delete, size: 40,),
        Icon(Icons.delete_sweep, size: 40,)
      ],
    );
  }
}