import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {


  @override
  State createState() {
    return _FavoriteWidgetState();
  }


}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container (
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: _isFavorite ? Icon(Icons.star) : Icon (Icons.star_border),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container (
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }



  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _favoriteCount -=1;
        _isFavorite = false;
      }
      else {
        _favoriteCount += 1;
        _isFavorite = true;
      }
    });
  }
}