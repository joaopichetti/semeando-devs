import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final List<Color> colors = List.generate(10, (index) {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            for (final color in colors)
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.all(8),
                color: color,
              ),
          ],
        ),
      ),
    );
  }
}
