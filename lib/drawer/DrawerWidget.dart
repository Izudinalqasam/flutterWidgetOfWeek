import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),
      body: Builder(
        builder: (context) => Center(
          child: RaisedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: Text("Open Drawer"),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Serdadau 52"),
              accountEmail: Text("serdadu52@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.android
                        ? Colors.white
                        : Colors.blue,
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 40),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.android
                          ? Colors.white.withOpacity(0.8)
                          : Colors.blue,
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text("Home"),
              trailing: Icon(Icons.home),
              onTap: () {
                closeDrawer(context);
              },
            )
          ],
        ),
      ),
    );
  }

  // you can use this header for your drawer if you need to custom the header of the drawer
  Widget createCustomHeader() {
    return DrawerHeader(
      decoration: BoxDecoration(shape: BoxShape.rectangle),
      child: Image.asset(
        "assets/cien.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  void closeDrawer(BuildContext context) {
    Navigator.pop(context);
  }
}
