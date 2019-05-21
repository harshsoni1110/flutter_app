import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/FavoriteWidget.dart';

class TrialLayout extends StatelessWidget{


  Widget getTitleWidget(){
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: Row (
        children: <Widget>[
          Expanded (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container (
                  padding: const EdgeInsets.only(bottom:8),
                  child: Text(
                      "Oeschinen Lake Campground",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Text(
                  "Kandersteg Switzerland",
                  style: TextStyle(
                    color: Colors.grey[500]
                  ),
                )
              ],
            ),
          ),
          FavoriteWidget()
        ],
      )

    );
  }


  Widget getBottomSection (BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container (
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildBottomColumn(color, Icons.call, 'CALL'),
          _buildBottomColumn(color, Icons.near_me, 'ROUTE'),
          _buildBottomColumn(color, Icons.share, 'SHARE')
        ],
      ),
    );
  }
  Widget _buildBottomColumn (Color color, IconData icon, String label) {
    return Column (
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon (icon, color: color),
        Container (
          margin: const EdgeInsets.only(top:8),
          child: Text (
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }

  Widget getTextSection () {
    return Container (
      padding: const EdgeInsets.all(32),
      child: Text (
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled=false;
    return ListView(

      children: <Widget>[
        Image.asset ('images/lake.jpg', width: 500, height: 500, fit: BoxFit.cover,),
        getTitleWidget(),
        getBottomSection(context),
        getTextSection()
      ],
    );

  }
}


