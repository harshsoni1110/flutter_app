import 'package:flutter/material.dart';
import 'package:flutter_app/TrialLayout.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        title: "Welcome to flutter",
/*      home: ShoppingList(
        products: <Product>[
          Product(name: "Product1"),
          Product(name: "Product2"),
          Product(name: "Product3"),
          Product(name: "Product4"),
          Product(name: "Product5"),
          Product(name: "Product6"),
          Product(name: "Product7"),
          Product(name: "Product8"),
          Product(name: "Product9"),
          Product(name: "Product10"),
          Product(name: "Product11"),
          Product(name: "Product12"),
          Product(name: "Product13"),
        ],
      ),*/
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter layout demo'),
            ),
            body: TrialLayout()));
  }
}

class CounterWidget extends StatefulWidget {
  @override
  Counter createState() => Counter();
}

class Counter extends State<CounterWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My first stateful widget'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Increment the value"),
              onPressed: increment,
            ),
            Text('Count $counter')
          ],
        ));
  }
}

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "MEnu icon",
          onPressed: null,
        ),
        title: Text('Example Title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Center(child: RaisedButton(child: Text('Button hello!')))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "Floating action button",
          child: Icon(Icons.add),
          onPressed: null),
    );
  }
}
