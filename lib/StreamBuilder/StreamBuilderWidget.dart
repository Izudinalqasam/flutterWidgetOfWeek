import 'package:flutter/material.dart';

// you can leverage the benefit of stream, if you have a stream data omitted by the source

class StreamBuilderWidget extends StatefulWidget {
  @override
  _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.center,
        child: StreamBuilder(
          stream: getData(),
          initialData: "Loading .....",
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (!snapshot.hasError) {
                return Text(snapshot.data as String);
              } else {
                return Text("Something goes wrong");
              }
            }
          },
        ),
      ),
    );
  }

  Stream<String> getData() async* {
    await Future.delayed(Duration(seconds: 10));
    yield "Aku padamu mas";
  }
}
