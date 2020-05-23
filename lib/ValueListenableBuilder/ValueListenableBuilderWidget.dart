import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderWidget extends StatefulWidget {
  @override
  _ValueListenableBuilderWidgetState createState() =>
      _ValueListenableBuilderWidgetState();
}

class _ValueListenableBuilderWidgetState
    extends State<ValueListenableBuilderWidget> {
  ValueNotifier<String> _myValue = ValueNotifier("0");
  final myController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(updateTxt);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ValueListenableBuilder Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: myController,
            ),
            ValueListenableBuilder<String>(
              valueListenable: _myValue,
              builder: (context, value, _) {
                return Text("Value is $value");
              },
            ),
          ],
        ),
      ),
    );
  }

  void updateTxt(){
    _myValue.value = myController.text.toString();
  }
}
