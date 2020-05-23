import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Table Example"),
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          defaultColumnWidth: FixedColumnWidth(50),
          columnWidths: {1: FractionColumnWidth(0.2), 2: FractionColumnWidth(0.5) },
          border: TableBorder.all(width: 5, color: Colors.white),
          children: [
            TableRow(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 50,
                  height: 150,
                  color: Colors.green,
                ),
                Container(
                  width: 50,
                  height: 100,
                  color: Colors.purple,
                )
              ],
            ),
            TableRow(
              children: [
                Container(
                  width: 50,
                  height: 150,
                  color: Colors.red,
                ),
                Container(
                  width: 50,
                  height: 150,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
