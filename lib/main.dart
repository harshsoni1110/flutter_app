import 'package:flutter/material.dart';
import 'package:flutter_app/TrialLayout.dart';

void main() {
  runApp(
      MaterialApp(
          initialRoute: '/',
          routes: {
            '/' : (context) => FirstScreen(),
            '/layout' : (context) => MyApp()
          },
          title: "Flutter Trials",
        ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: TrialLayout());
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Trials"),
        ),
        body: Center(
          child: RaisedButton(
              child: Text("Open layout"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/layout',
                );
              }),
        ));
  }
}
