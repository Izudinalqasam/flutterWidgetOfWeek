import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  _DismissibleWidgetState createState() {
    print("Running create state");
    return _DismissibleWidgetState();
  } 
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  static Widget replacementWidget = Dismissible(
    direction: DismissDirection.vertical,
    child: ListTile(
      title: Text("Dismissible Example 1"),
    ),
    background: Container(
      color: Colors.green,
    ),
    key: ValueKey("Dismissable 1"),
    onDismissed: (direction) {
      replacementWidget = Container();
    },
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Running initial state");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("Running didChangeDepedencies");
  }

  @override
  void setState(fn) {
    // TODO: implement setState
    print("Running set state");
    super.setState(fn);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("Running diactivate state");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("Running dispose state");
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    print("Running build state");

    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible Example"),
      ),
      body: Center(child: replacementWidget),
    );
  }
}
