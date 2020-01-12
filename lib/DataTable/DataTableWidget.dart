import 'package:flutter/material.dart';

// every column is widget so you can put any widget in the columen and row
// if your data will not fit in the horiznontal space, use SingleChildScrollView
class DataTableWidget extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DataTable Example"),
      ),
      body: Center(
        child: DataTable(
          sortColumnIndex: 0,
          sortAscending: true,
          columns: [
            DataColumn(label: Text("Name")),
            DataColumn(
                label: Text("Year"),
                numeric: true) // this will force the column to align right side
          ],
          rows: [
            DataRow(selected: true, // this make the row look selected
                cells: [
                  DataCell(FlutterLogo(),
                      showEditIcon:
                          true), // this will show edit icon in the cell
                  DataCell(Text('2018'))
                ]),
            DataRow(cells: [
              DataCell(Text('Gopher'),
                  placeholder:
                      true), // this will make the text in data cell as placeholder
              DataCell(Text('2019'), showEditIcon: true)
            ])
          ],
        ),
      ),
    );
  }
}
