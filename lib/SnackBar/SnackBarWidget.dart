import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar Example"),
      ),
      body: Builder(
          builder: (context) => Center(
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    onPressed: () {
                      Scaffold.of(context).showSnackBar(myCustomSnackBar());
                    },
                    child: Text("Show a snackbar")),
              )),
    );
  }

  Widget myCustomSnackBar() => SnackBar(
          content: Row(
        children: <Widget>[
          Icon(Icons.thumb_up),
          SizedBox(
            width: 10,
          ),
          Expanded(child: Text("Hello Flutter"))
        ],
      ));
}
