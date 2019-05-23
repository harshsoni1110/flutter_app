import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return
      Container (
        margin: EdgeInsets.all(5),
        child: Row (
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded (
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(30),
                color: Colors.deepOrangeAccent,
              )
            ),

          Expanded (
            flex: 9,
            child: Column (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container (
                  margin : EdgeInsets.only(left: 5),
                  padding: EdgeInsets.all(5),
                  width: 255.0,
                  color: Colors.amber,
                ),
                Container (
                  padding: EdgeInsets.all(5),

                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container (
                        margin : EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        padding: EdgeInsets.all(5),
                        width: 60.0,
                        color: Colors.red,
                      ),
                      Container (
                        margin : EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        padding: EdgeInsets.all(5),
                        width: 60.0,
                        color: Colors.lightGreen,
                      ),
                      Container (
                        margin : EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        padding: EdgeInsets.all(5),
                        width: 60.0,
                        color: Colors.lightBlue,
                      ),
                      Container (
                        margin : EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        padding: EdgeInsets.all(5),
                        width: 60.0,
                        color: Colors.cyanAccent,
                      ),
                    ],
                  ),
                ),

              ],
            )  ,
          ),
            Expanded (
              child: Container (
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(5),
                color: Colors.pink,
              ),


              flex: 1,
            )
        ],),
      );
  }
}
