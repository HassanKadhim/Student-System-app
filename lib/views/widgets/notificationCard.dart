import 'package:flutter/material.dart';

import '../../constants.dart';

class NotificationCard extends StatelessWidget {
  var _title;
  var _body;
  var _color ;


  NotificationCard (this._title, this._body, this._color );
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

              color: Color(int.parse(_color)).withOpacity(0.8) ,
              // color: kDengerColor.withOpacity(0.8),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add_alert_outlined,
                  color:kTextColor ,
                )
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
              color: kTextColor.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
