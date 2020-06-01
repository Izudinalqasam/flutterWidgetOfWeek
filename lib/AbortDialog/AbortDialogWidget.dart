import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AbortDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    LicenseRegistry.addLicense(() async*{
      yield LicenseRegistryWithLineBreak();
    });

    return Scaffold(
      appBar: AppBar(title: Text("AbourtDialog Example")),
      body: Center(
        child: RaisedButton(
            child: Text("Click me to show dialog"),
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationVersion: '2.0.1',
                  applicationIcon: Icon(Icons.account_box),
                  applicationLegalese: "This is appliation legale field",
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 100,
                      color: Colors.blue[200]
                    )
                  ]);
            }),
      ),
    );
  }
}

class LicenseRegistryWithLineBreak extends LicenseEntry {

  @override
  Iterable<String> get packages => ["String 1, String 2"];

  @override
  Iterable<LicenseParagraph> get paragraphs => [LicenseParagraph("This is paragraph which hopefully will be appeared in the application detail license", 10)];

}
