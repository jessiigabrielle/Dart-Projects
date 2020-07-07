import 'package:flutter/material.dart';
import 'package:nubank/tela.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank replica',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Tela(),
    );
  }
}
