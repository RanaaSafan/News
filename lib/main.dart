import 'package:flutter/material.dart';
import 'package:new_app/views/screen1.dart';



void main() {
  runApp(NEWAPP());
}
class NEWAPP extends StatelessWidget {
  const NEWAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}
