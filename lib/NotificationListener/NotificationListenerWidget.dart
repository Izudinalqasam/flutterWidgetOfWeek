import 'package:flutter/material.dart';
import 'package:flutter_widget_week/NotificationListener/MyCustomNotificationListener.dart';

// using this widget to handle the notification which is bubbled up the tree by widget such as widget has scroll in
// Returning true in the onNotifacation callback means that the notification has been handled
// and it will stop bubbling up the tree
class NotificationListenerWidget extends StatefulWidget {
  @override
  _NotificationListenerWidgetState createState() =>
      _NotificationListenerWidgetState();
}

class _NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification Listener Example"),
      ),
      body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotif) {
            print("the scrolling value is $scrollNotif");
            return true;
          },
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              GestureDetector(
                  child: Container(
                    width: 200,
                    height: 300,
                    color: Colors.red,
                  ),
                  onTap: () {
                    print("First Item");
                    MyCustomNotificationListener("the first item clicked")
                        .dispatch(context);
                  }),
              Container(width: 200, height: 300, color: Colors.blue),
              Container(width: 200, height: 300, color: Colors.amber),
              Container(width: 200, height: 300, color: Colors.purple)
            ]),
          )),
    );
  }
}
