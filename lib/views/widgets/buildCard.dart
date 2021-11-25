
import 'package:flutter/material.dart';
import 'package:student_system/views/screens/profile.dart';

import '../../constants.dart';

class HomeCard extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  var _route;

  HomeCard(this._name, this._description, this._imageUrl, this._route);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, _route);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: kCardColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Image.asset(_imageUrl),
            title: Text(
              _name,
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              _description,
              style: TextStyle(
                color: kTextColor.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
