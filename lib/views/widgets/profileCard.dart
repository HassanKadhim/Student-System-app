import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfileCard extends StatelessWidget {
  var _title;
  var _icon;
  var _body;

  ProfileCard (this._title, this._icon ,this._body );
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kCardColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff11ccef),
                  Color(0xff117bef),
                ],),
              color: kCategoryTextColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(_icon,
                  color:kTextColor ,
                ),
              ],
            ),
          ),
          title: Text(
            _title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          subtitle: Text(
            _body,
            style: TextStyle(

              color: kTextColor,
            ),
          ),

        ),
      ),
    );
  }
}
