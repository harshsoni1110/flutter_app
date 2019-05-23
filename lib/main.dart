import 'package:flutter/material.dart';
import 'package:flutter_app/ListWidget.dart';
import 'package:flutter_app/TrialLayout.dart';

void main() {
  runApp(
      MaterialApp(
          initialRoute: '/',
          routes: {
            '/' : (context) => FirstScreen(),
            '/layout' : (context) => MyApp(),
            '/list' : (context) => ListWidget ()
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
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Theme.of(context).primaryColor,
                  child: Text("Open layout", style: TextStyle(
                    color: Colors.white
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/layout',
                    );
                  }),
              RaisedButton(
                  color: Theme.of(context).primaryColor,
                  child: Text("Open list", style: TextStyle(
                      color: Colors.white
                  ),),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/list',
                    );
                  }),

            ],
          )

        ));
  }
}
