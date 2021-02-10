import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DataTable in Flutter'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: <Widget>[
            Center(
              child: Text('Team 2 Members', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
            ),
            DataTable(columns: [
              DataColumn(
                label: Text('First Name', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text('Second Name', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text('Role', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
                rows: const <DataRow>[
    DataRow(
    cells: <DataCell>[
    DataCell(Text('Joyce')),
    DataCell(Text('Riro')),
    DataCell(Text('Programmer')),
    ],
    ),
    DataRow(
    cells: <DataCell>[
    DataCell(Text('Ato')),
    DataCell(Text('Muliro')),
    DataCell(Text('Back End')),
    ],
    ),
    DataRow(
    cells: <DataCell>[
    DataCell(Text('Willy')),
    DataCell(Text('Green')),
    DataCell(Text('Consultant')),
                ]),
              ],
            ),
          ])
      ),
    );
  }
}
