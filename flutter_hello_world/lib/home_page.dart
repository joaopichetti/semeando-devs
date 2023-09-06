import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.red,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.blue,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
