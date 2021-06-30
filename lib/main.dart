import 'package:flutter/material.dart';
import 'DoItForMe.dart';
import 'second_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home:  DoItForMe(),
      );
  }
}
