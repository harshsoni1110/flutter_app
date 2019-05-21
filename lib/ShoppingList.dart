import 'package:flutter/material.dart';
import 'Product.dart';
class ShoppingList extends StatefulWidget{
  ShoppingList({Key key, this.products}) : super(key:key);

  final List<Product> products;

  @override
  ShoppingListState createState () => ShoppingListState();

}

class ShoppingListState extends State<ShoppingList>{
  Set<Product> shoppingCart = Set<Product>();

  void handleCartChanged (Product product, bool inCart){
    setState(() {
      if (inCart){
        shoppingCart.add(product);
      }
      else {
        shoppingCart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
          return ShoppingListItem(
            product: product,
            inCart: shoppingCart.contains(product),
            onCartChanged: handleCartChanged,
          );
        }).toList()
      ),
    );
  }


}

