import 'package:flutter/material.dart';

import '../../../constants.dart';

class Time extends StatefulWidget {
  const Time({Key? key}) : super(key: key);

  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: const Center(
        child: Text(
          'Time',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
