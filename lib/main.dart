import 'package:flutter/material.dart';
import 'package:flutter_app/TrialLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter layout demo'),
            ),
            body: TrialLayout()));
  }
}
