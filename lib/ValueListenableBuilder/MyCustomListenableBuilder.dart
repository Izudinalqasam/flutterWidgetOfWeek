import 'package:flutter/material.dart';
import 'package:flutter_widget_week/ValueListenableBuilder/MyCustomNotifier.dart';

class MyCustomListenableBuilder extends StatefulWidget {
  @override
  _MyCustomListenableBuilderState createState() =>
      _MyCustomListenableBuilderState();
}

class _MyCustomListenableBuilderState extends State<MyCustomListenableBuilder> {
  int currentValue = 0;
  MyCustomNotifier value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value = MyCustomNotifier(currentValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Custom Listenable Builder"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            value.updateString(currentValue++);
          },
        ),
        body: Align(
            alignment: Alignment.center,
            child: ValueListenableBuilder(
              valueListenable: value,
              builder: (context, value, _) {
                return Text("current value is $value");
              },
            )));
  }
}
