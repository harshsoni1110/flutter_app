import 'package:flutter/material.dart';

class Product {
  const Product({this.name});
  final String name;
}

typedef void CartChangedCallback (Product product, bool inCart);

class ShoppingListItem extends StatelessWidget{

  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
  : product = product, super(key : ObjectKey (product));

  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color getColor (BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }
  TextStyle getTextStyle (BuildContext context){
    if (!inCart) return null;
    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        onCartChanged(product, !inCart);
      },//onTap
      leading: CircleAvatar(
        backgroundColor: getColor(context),
//        child: Text(product.name),
      ),
      title: Text(product.name, style: getTextStyle(context)),
    );
  }
}


