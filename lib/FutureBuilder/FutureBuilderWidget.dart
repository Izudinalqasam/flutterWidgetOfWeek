import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Widget Example"),),
      body: Align(
        alignment: Alignment.center,
        child: FutureBuilder(
          future: delayNetwork(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text("Something wrong");
              }
              return Text("Success");
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Future<int> delayNetwork() async {
    await Future.delayed(Duration(seconds: 5));
    return 1;
  }
}
