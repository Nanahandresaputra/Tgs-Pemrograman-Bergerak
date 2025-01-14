import 'package:flutter/material.dart';

class ColumnAndRowWidget extends StatelessWidget {
  const ColumnAndRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Column dan Row Widget',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Column Widget',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: <Widget>[
                Text('Column 1'),
                Text('Column 2'),
                Text('Column 3'),
                Text('Column 4'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Row Widget',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Row 1'),
                Text('Row 2'),
                Text('Row 3'),
                Text('Row 4'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
