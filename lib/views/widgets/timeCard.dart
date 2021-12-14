import 'package:flutter/material.dart';

import '../../constants.dart';

class TimeCard extends StatelessWidget {
  var _sbjectName;
  var _gredeName;


  TimeCard (this._sbjectName, this._gredeName);

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
              color: kCategoryTextColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.timer,
                  color:kTextColor ,
                )

              ],
            ),
          ),
          title: Text(
            _sbjectName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          subtitle: Text(
            _gredeName,
            style: TextStyle(
              color: kTextColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
