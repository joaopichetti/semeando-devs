import 'package:flutter/material.dart';


void main() {
  runApp(MeuApp());
}


class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text(
          'Minha Aplicação',
        ),
      ),
    );
  }
}
