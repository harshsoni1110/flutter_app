import 'package:flutter/material.dart';
import 'package:flutter_app/CustomListItem.dart';

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<CustomListItem>.generate(15, (i) => CustomListItem());
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter basic list'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return items[index];
          },
        ));
  }
}
